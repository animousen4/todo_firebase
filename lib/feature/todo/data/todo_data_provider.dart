import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:todo_firebase/feature/auth/data/model/user_model.dart';
import 'package:todo_firebase/feature/todo/data/model/converter/todo_model_converter.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_model.dart';
import 'package:todo_firebase/feature/todo/data/results.dart';

abstract interface class TodoDataProvider {
  Future<LoadedTasksResult> loadTasks(UserModel userModel);

  Stream<TodoModel> onTodoAdd(UserModel userModel);
  Stream<int> get onTodoRemove;
  Stream<TodoModel> get onTodoModify;
}

class TodoDataProviderImpl implements TodoDataProvider {
  final FirebaseDatabase _firebaseDatabase;
  final FirebaseFirestore _firebaseFirestore;
  final TodoModelDecoder _todoModelDecoder;

  TodoDataProviderImpl(
      {required FirebaseDatabase firebaseDatabase,
      required FirebaseFirestore firebaseFirestore,
      required TodoModelDecoder todoModelDecoder})
      : _firebaseDatabase = firebaseDatabase,
        _firebaseFirestore = firebaseFirestore,
        _todoModelDecoder = todoModelDecoder;

  @override
  Future<LoadedTasksResult> loadTasks(UserModel user) async {
    final response = await _firebaseFirestore
        .collection("user")
        .doc(user.uid)
        .collection("todo")
        .withConverter(
          fromFirestore: (snapshot, _) => TodoModel.fromJson(snapshot.data()!),
          toFirestore: (model, _) => model.toJson(),
        )
        .get();
    final list = response.docs.map((element) => element.data()).toList();

    return LoadedTasksResult.success(entity: list);
  }

  @override
  Stream<TodoModel> onTodoAdd(UserModel user) => _firebaseDatabase
          .ref("user/${user.uid}")
          .child("todo")
          .onChildAdded
          .map((event) {
        final value = event.snapshot.value as String?;

        return _todoModelDecoder.convert(value!);
      });

  @override
  // TODO: implement onTodoModify
  Stream<TodoModel> get onTodoModify => throw UnimplementedError();

  @override
  // TODO: implement onTodoRemove
  Stream<int> get onTodoRemove => throw UnimplementedError();
}
