import 'package:todo_firebase/feature/todo/data/results.dart';

abstract interface class TodoDataProvider {
  Future<LoadedTasksResult> loadTasks();
}

class TodoDataProviderImpl implements TodoDataProvider{
  @override
  Future<LoadedTasksResult> loadTasks() {
    // TODO: implement loadTasks
    throw UnimplementedError();
  }

}
