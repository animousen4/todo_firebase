import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
          event.mapOrNull(loadTasks: (event) => _loadTasks(event, emit)),
    );
  }

  void _loadTasks(_LoadTasks event, Emitter<TodoState> emit) {
    _todoRepository.loadTasks();
  }
}
