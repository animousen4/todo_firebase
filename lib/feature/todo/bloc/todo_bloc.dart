import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_data_snapshot_model.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_item.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_model.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_sort_mechanism.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_sort_type.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_status.dart';
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
        removeTodo: (event) async => _removeTodo(event, emit),
        markTodo: (event) async => _markTodo(event, emit),
        sortBy: (event) async => _sortBy(event, emit),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _streamChangesSubscription.cancel();
    return super.close();
  }

  String _getIdByIndex(int index) => state.todoModels[index].id;

  void _loadTodos(_LoadTodos event, Emitter<TodoState> emit) async {
    emit(
      TodoState.progress(
        todoModels: state.todoModels,
        sortType: event.sortBy ?? state.sortType,
      ),
    );

    final mechanism =
        event.sortBy?.sortMechanism ?? const CompleteSortMechanism();

    _streamChangesSubscription =
        (await _todoRepository.todoChangeStream(mechanism)).listen(
      (model) {
        add(TodoEvent.todoDataChanged(snapshot: model));
      },
      onError: (e) {
        _logger.warning("Streaming error: $e");
      },
    );

    await _$handleError(
      () async {
        final todos = await _todoRepository.loadTasks(mechanism);

        todos.map(
          success: (result) => emit(
            TodoState.idle(todoModels: result.entity, sortType: state.sortType),
          ),
          failed: (_) => emit(
            TodoState.failed(
              todoModels: state.todoModels,
              sortType: state.sortType,
            ),
          ),
        );
      },
      emit,
    );
  }

  void _onTodoDataChanged(_TodoDataChanged event, Emitter<TodoState> emit) {
    final dataList = event.snapshot.dataList;
    _logger.info("Data has changed");
    emit(
      TodoState.idle(
        todoModels: dataList,
        snapshot: event.snapshot,
        sortType: state.sortType,
      ),
    );
  }

  void _addTodo(_AddTodo event, Emitter<TodoState> emit) async {
    emit(
      TodoState.progress(
        todoModels: state.todoModels,
        sortType: state.sortType,
      ),
    );

    await _$handleError(
      () async {
        await _todoRepository.addTodo(event.todoModel);
      },
      emit,
    );
  }

  void _removeTodo(_RemoveTodo event, Emitter<TodoState> emit) async {
    emit(
      TodoState.progress(
        todoModels: state.todoModels,
        sortType: state.sortType,
      ),
    );

    await _$handleError(
      () async => await _todoRepository.removeTodo(_getIdByIndex(event.index)),
      emit,
    );
  }

  void _markTodo(_MarkToDo event, Emitter<TodoState> emit) async {
    emit(
      TodoState.progress(
        todoModels: state.todoModels,
        sortType: state.sortType,
      ),
    );

    await _$handleError(
      () async {
        final toUpdatetodoItem = state.todoModels[event.index];

        final todoUpdatedItem = toUpdatetodoItem.copyWith(
          todoModel: toUpdatetodoItem.todoModel.copyWith(
            todoStatus: toUpdatetodoItem.todoModel.todoStatus.map(
              planned: (_) => const TodoStatus.completed(),
              completed: (_) => const TodoStatus.planned(),
            ),
          ),
        );

        final updatedList = List<TodoItem>.from(state.todoModels)
          ..[event.index] = todoUpdatedItem;

        emit(
          TodoState.progress(
            todoModels: updatedList,
            sortType: state.sortType,
          ),
        );

        final todoItem =
            await _todoRepository.getTodo(_getIdByIndex(event.index));

        final modifiedTodo =
            todoItem.todoModel.copyWith(todoStatus: event.status);

        await _todoRepository.modifyTodo(
          _getIdByIndex(event.index),
          modifiedTodo,
        );
      },
      emit,
    );

    _logger.info("mark processed");
  }

  void _sortBy(_SortBy event, Emitter<TodoState> emit) async {
    await _$handleError(
      () async {
        final result =
            await _todoRepository.loadTasks(event.sortType.sortMechanism);
        result.map(
          failed: (error) => emit(
            TodoState.failed(
              todoModels: state.todoModels,
              sortType: state.sortType,
            ),
          ),
          success: (success) => emit(
            TodoState.idle(
                todoModels: success.entity, sortType: event.sortType,),
          ),
        );
      },
      emit,
    );
  }

  Future<void> _$handleError(
    Future Function() function,
    Emitter<TodoState> emit,
  ) async {
    try {
      await function();
    } catch (e) {
      _logger.warning("Error occured in bloc: $e", e);
      emit(
        TodoState.error(
          todoModels: state.todoModels,
          sortType: state.sortType,
          snapshot: state.snapshot,
          error: e,
        ),
      );

      rethrow;
    }
  }
}
