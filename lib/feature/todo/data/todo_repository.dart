import 'package:todo_firebase/feature/auth/data/model/user_model.dart';
import 'package:todo_firebase/feature/auth/data/provider/auth_data_provider.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_data_snapshot_model.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_item.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_model.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_sort_mechanism.dart';
import 'package:todo_firebase/feature/todo/data/results.dart';
import 'package:todo_firebase/feature/todo/data/todo_sync_server_data_provider.dart';

/// Repository of todo, contains all necessary manipulations
/// for todos, such as
///
/// - get
/// - add
/// - remove
/// - modify
///
/// and stream with changes for monitoring
abstract interface class TodoRepository {
  /// Load tasks with result
  Future<LoadedTasksResult> loadTasks(
    TodoSortMechanism mechanism,
  );

  /// Stream, which provides changes of Todos in real time
  Future<Stream<TodoDataSnapshotModel>> todoChangeStream(
    TodoSortMechanism mechanism,
  );

  /// Remove todo by id
  Future<void> removeTodo(String id);

  /// Add a new todo from model
  Future<void> addTodo(TodoModel todo);

  /// Modify todo by id and updated model
  Future<void> modifyTodo(String id, TodoModel todo);

  /// Get todo by id
  Future<TodoItem> getTodo(String id);
}

/// Base implementation of [TodoRepository]
/// We use [AuthDataProvider] here for provide authorities,
/// such as `uid`
/// Also we use use [TodoSyncServerDataProvider], here we provide
/// our authoirities, received from [AuthDataProvider]
/// to get private information
class TodoRepositoryImpl implements TodoRepository {
  final TodoSyncServerDataProvider _todoDataProvider;
  final AuthDataProvider _authDataProvider;

  /// Public constructor
  TodoRepositoryImpl({
    required TodoSyncServerDataProvider todoDataProvider,
    required AuthDataProvider authDataProvider,
  })  : _todoDataProvider = todoDataProvider,
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
    TodoSortMechanism mechanism,
  ) async {
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
