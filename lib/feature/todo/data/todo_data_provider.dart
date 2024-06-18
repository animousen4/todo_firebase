import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:logging/logging.dart';
import 'package:todo_firebase/feature/auth/data/model/user_model.dart';
import 'package:todo_firebase/feature/todo/data/dto/todo_dto.dart';
import 'package:todo_firebase/feature/todo/data/model/mapper/dto_mapper.dart';
import 'package:todo_firebase/feature/todo/data/model/mapper/todo_dto_mapper.dart';
import 'package:todo_firebase/feature/todo/data/model/mapper/todo_status_mapper.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_data_changes_model.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_data_snapshot_model.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_model.dart';
import 'package:todo_firebase/feature/todo/data/results.dart';

abstract interface class TodoDataProvider {
  Future<LoadedTasksResult> loadTasks(UserModel userModel);

  Stream<TodoDataSnapshotModel> onTodoChanged(UserModel userModel);

  Future<void> addTodo(UserModel userModel, TodoModel todo);
}

class TodoDataProviderImpl implements TodoDataProvider {
  final _logger = Logger("TodoDataProviderImpl");

  final FirebaseFirestore _firebaseFirestore;

  final DtoMapper<TodoDto, TodoModel> _todoDtoMapper;

  TodoDataProviderImpl(
      {required FirebaseFirestore firebaseFirestore,
      required TodoDtoMapper todoDtoMapper})
      : _firebaseFirestore = firebaseFirestore,
        _todoDtoMapper = todoDtoMapper;

  @override
  Future<LoadedTasksResult> loadTasks(UserModel user) async {
    final response = await _firebaseFirestore
        .collection("user")
        .doc(user.uid)
        .collection("todo")
        .withConverter(
          fromFirestore: (snapshot, _) =>
              TodoDto.fromFirestore(snapshot.data()!),
          toFirestore: (model, _) => model.toFirestore(),
        )
        .get();
    final list = response.docs.map((element) {
      final data = element.data();

      return _todoDtoMapper.mapFromDto(data);
    }).toList();

    return LoadedTasksResult.success(entity: list);
  }

  @override
  Stream<TodoDataSnapshotModel> onTodoChanged(UserModel user) {
    return _firebaseFirestore
        .collection("user")
        .doc(user.uid)
        .collection("todo")
        .withConverter(
          fromFirestore: (snapshot, _) =>
              TodoDto.fromFirestore(snapshot.data()!),
          toFirestore: (model, _) => model.toFirestore(),
        )
        .snapshots()
        .map(
          (snapshot) => TodoDataSnapshotModel(
            dataList: snapshot.docs
                .map((element) => _todoDtoMapper.mapFromDto(element.data()))
                .toList(),
            changes: snapshot.docChanges.map((element) {
              final model = _todoDtoMapper.mapFromDto(element.doc.data()!);

              return switch (element.type) {
                DocumentChangeType.added => TodoDataChangesModel.added(
                    todoModel: model,
                    newIndex: element.newIndex,
                  ),
                DocumentChangeType.removed => TodoDataChangesModel.removed(
                    todoModel: model,
                    oldIndex: element.oldIndex,
                  ),
                DocumentChangeType.modified => TodoDataChangesModel.modified(
                    todoModel: model,
                    newIndex: element.newIndex,
                    oldIndex: element.oldIndex,
                  )
              };
            }).toList(),
          ),
        );
  }

  @override
  Future<void> addTodo(UserModel userModel, TodoModel todo) async {
    await _firebaseFirestore
        .collection("user")
        .doc(userModel.uid)
        .collection("todo")
        .withConverter(
          fromFirestore: (snapshot, _) =>
              TodoDto.fromFirestore(snapshot.data()!),
          toFirestore: (model, _) => model.toFirestore(),
        )
        .add(_todoDtoMapper.mapFromModel(todo));
  }
}
