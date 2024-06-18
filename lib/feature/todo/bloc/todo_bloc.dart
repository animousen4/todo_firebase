import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:todo_firebase/feature/todo/data/dto/todo_dto.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_data_changes_model.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_data_snapshot_model.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_model.dart';
import 'package:todo_firebase/feature/todo/data/todo_data_provider.dart';
import 'package:todo_firebase/feature/todo/data/todo_repository.dart';

part 'todo_event.dart';
part 'todo_state.dart';
part 'todo_bloc.freezed.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodoRepository _todoRepository;

  final _logger = Logger("TodoBloc");

  late final StreamSubscription<TodoDataSnapshotModel>
      _streamChangesSubscription;

  TodoBloc({
    required TodoState initialState,
    required TodoRepository todoRepository,
  })  : _todoRepository = todoRepository,
        super(initialState) {
    on<TodoEvent>(
      (event, emit) async => event.mapOrNull(
        loadTodos: (event) async => _loadTodos(event, emit),
        todoDataChanged: (event) async => _onTodoDataChanged(event, emit),
        addTodo: (event) async => _addTodo(event, emit),
      ),
    );
  }

  void _loadTodos(_LoadTodos event, Emitter<TodoState> emit) async {
    emit(TodoState.progress(todoModels: state.todoModels));

    final todos = await _todoRepository.loadTasks();
    _streamChangesSubscription =
        (await _todoRepository.todoChangeSteam()).listen((model) {
      add(TodoEvent.todoDataChanged(snapshot: model));
    });

    todos.map(
      success: (result) => emit(TodoState.idle(todoModels: result.entity)),
      failed: (_) => emit(TodoState.failed(todoModels: state.todoModels)),
    );
  }

  void _onTodoDataChanged(_TodoDataChanged event, Emitter<TodoState> emit) {
    final dataList = event.snapshot.dataList;

    

    _logger.info(dataList);
    emit(
        TodoState.idle(todoModels: dataList, snapshot: event.snapshot));
  }

  void _addTodo(_AddTodo event, Emitter<TodoState> emit) async {
    emit(TodoState.progress(todoModels: state.todoModels));

    await _todoRepository.addTodo(event.todoModel);
  }
}
