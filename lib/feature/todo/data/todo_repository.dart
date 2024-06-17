import 'package:todo_firebase/feature/todo/data/results.dart';

abstract interface class TodoRepository {
  Future<LoadedTasksResult> loadTasks();
}

class TodoRepositoryImpl implements TodoRepository{
  @override
  Future<LoadedTasksResult> loadTasks() {
    // TODO: implement loadTasks
    throw UnimplementedError();
  }

}