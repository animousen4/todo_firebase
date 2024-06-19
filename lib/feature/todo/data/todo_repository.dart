import 'package:todo_firebase/feature/auth/data/model/user_model.dart';
import 'package:todo_firebase/feature/auth/data/provider/auth_data_provider.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_data_snapshot_model.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_item.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_model.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_sort_mechanism.dart';
import 'package:todo_firebase/feature/todo/data/results.dart';
import 'package:todo_firebase/feature/todo/data/todo_data_provider.dart';

abstract interface class TodoRepository {
  Future<LoadedTasksResult> loadTasks(
    TodoSortMechanism mechanism,
  );
  Future<Stream<TodoDataSnapshotModel>> todoChangeStream(
      TodoSortMechanism mechanism,);
  Future<void> removeTodo(String id);
  Future<void> addTodo(TodoModel todo);
  Future<void> modifyTodo(String id, TodoModel todo);
  Future<TodoItem> getTodo(String id);
}

class TodoRepositoryImpl implements TodoRepository {
  final TodoDataProvider _todoDataProvider;
  final AuthDataProvider _authDataProvider;

  TodoRepositoryImpl(
      {required TodoDataProvider todoDataProvider,
      required AuthDataProvider authDataProvider,})
      : _todoDataProvider = todoDataProvider,
        _authDataProvider = authDataProvider;

  Future<UserModel> get _user async {
    final user = await _authDataProvider.getUser();
    assert(user != null);

    return user!;
  }

  @override
  Future<LoadedTasksResult> loadTasks(
    TodoSortMechanism mechanism,
  ) async {
    return _todoDataProvider.loadTasks(await _user, mechanism);
  }

  @override
  Future<Stream<TodoDataSnapshotModel>> todoChangeStream(
      TodoSortMechanism mechanism,) async {
    return _todoDataProvider.onTodoChanged(await _user, mechanism);
  }

  @override
  Future<TodoItem> getTodo(String id) async {
    return _todoDataProvider.getTodo(await _user, id);
  }

  @override
  Future<void> addTodo(TodoModel todo) async {
    await _todoDataProvider.addTodo(await _user, todo);
  }

  @override
  Future<void> removeTodo(String id) async {
    await _todoDataProvider.removeTodo(await _user, id);
  }

  @override
  Future<void> modifyTodo(String id, TodoModel todo) async {
    final user = await _user;

    await _todoDataProvider.modifyTodo(
      user,
      TodoItem(todoModel: todo, id: id),
    );
  }
}
