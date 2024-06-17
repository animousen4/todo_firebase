import 'package:todo_firebase/feature/auth/data/provider/auth_data_provider.dart';
import 'package:todo_firebase/feature/todo/data/results.dart';
import 'package:todo_firebase/feature/todo/data/todo_data_provider.dart';

abstract interface class TodoRepository {
  Future<LoadedTasksResult> loadTasks();
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
}
