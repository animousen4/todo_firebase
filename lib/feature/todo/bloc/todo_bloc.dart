import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_model.dart';
import 'package:todo_firebase/feature/todo/data/todo_data_provider.dart';
import 'package:todo_firebase/feature/todo/data/todo_repository.dart';

part 'todo_event.dart';
part 'todo_state.dart';
part 'todo_bloc.freezed.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodoRepository _todoRepository;

  TodoBloc({
    required TodoState initialState,
    required TodoRepository todoRepository,
  })  : _todoRepository = todoRepository,
        super(initialState) {
    on<TodoEvent>(
      (event, emit) =>
          event.mapOrNull(loadTodos: (event) => _loadTodos(event, emit)),
    );
  }

  void _loadTodos(_LoadTodos event, Emitter<TodoState> emit) {
    _todoRepository.loadTasks();
  }
}
