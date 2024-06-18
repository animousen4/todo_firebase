import 'package:todo_firebase/feature/auth/data/provider/auth_data_provider.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_data_snapshot_model.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_model.dart';
import 'package:todo_firebase/feature/todo/data/results.dart';
import 'package:todo_firebase/feature/todo/data/todo_data_provider.dart';

abstract interface class TodoRepository {
  Future<LoadedTasksResult> loadTasks();
  Future<Stream<TodoDataSnapshotModel>> todoChangeSteam();
  Future<void> addTodo(TodoModel todo);
}

class TodoRepositoryImpl implements TodoRepository {
  final TodoDataProvider _todoDataProvider;
  final AuthDataProvider _authDataProvider;

  TodoRepositoryImpl(
      {required TodoDataProvider todoDataProvider,
      required AuthDataProvider authDataProvider})
      : _todoDataProvider = todoDataProvider,
        _authDataProvider = authDataProvider;
  @override
  Future<LoadedTasksResult> loadTasks() async {
    final user = await _authDataProvider.getUser();
    assert(user != null);
    return _todoDataProvider.loadTasks(user!);
  }

  @override
  Future<Stream<TodoDataSnapshotModel>> todoChangeSteam() async {
    final user = await _authDataProvider.getUser();
    assert(user != null);

    return _todoDataProvider.onTodoChanged(user!);
  }

  @override
  Future<void> addTodo(TodoModel todo) async {
    final user = await _authDataProvider.getUser();
    assert(user != null);

    await _todoDataProvider.addTodo(user!, todo);
  }
}
