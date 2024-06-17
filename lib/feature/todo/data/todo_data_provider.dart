import 'package:firebase_database/firebase_database.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_model.dart';
import 'package:todo_firebase/feature/todo/data/results.dart';

abstract interface class TodoDataProvider {
  Future<LoadedTasksResult> loadTasks();

  Stream<TodoModel> get onTodoAdd;
  Stream<int> get onTodoRemove;
  Stream<TodoModel> get onTodoModify;
}

class TodoDataProviderImpl implements TodoDataProvider {
  final DatabaseReference _dbReference;

  TodoDataProviderImpl({required DatabaseReference dbReference}) : _dbReference = dbReference;
  @override
  Future<LoadedTasksResult> loadTasks() {
    
}

  @override
  Stream<TodoModel> get onTodoAdd => _dbReference.ref.onChildAdded.map((event) => event.snapshot.children);

  @override
  // TODO: implement onTodoModify
  Stream<TodoModel> get onTodoModify => throw UnimplementedError();

  @override
  // TODO: implement onTodoRemove
  Stream<int> get onTodoRemove => throw UnimplementedError();
}
