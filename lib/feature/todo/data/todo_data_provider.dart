import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:logging/logging.dart';
import 'package:todo_firebase/feature/auth/data/model/user_model.dart';
import 'package:todo_firebase/feature/todo/data/dto/todo_dto.dart';
import 'package:todo_firebase/feature/todo/data/dto/todo_item_dto.dart';
import 'package:todo_firebase/feature/todo/data/model/mapper/dto_mapper.dart';
import 'package:todo_firebase/feature/todo/data/model/mapper/todo_dto_mapper.dart';
import 'package:todo_firebase/feature/todo/data/model/mapper/todo_status_mapper.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_data_changes_model.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_data_snapshot_model.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_item.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_model.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_sort_mechanism.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_sort_type.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_status.dart';
import 'package:todo_firebase/feature/todo/data/results.dart';

abstract interface class TodoDataProvider {
  Future<LoadedTasksResult> loadTasks(
    UserModel userModel,
    TodoSortMechanism sortMechanism,
  );

  Stream<TodoDataSnapshotModel> onTodoChanged(
    UserModel userModel,
    TodoSortMechanism mechanism,
  );

  Future<void> addTodo(UserModel userModel, TodoModel todo);

  Future<void> removeTodo(UserModel userModel, String id);

  Future<void> modifyTodo(UserModel userModel, TodoItem todoItem);

  Future<TodoItem> getTodo(UserModel userModel, String id);
}

class TodoDataProviderImpl implements TodoDataProvider {
  final _logger = Logger("TodoDataProviderImpl");

  final FirebaseFirestore _firebaseFirestore;

  final DtoMapper<TodoDto, TodoModel> _todoDtoMapper;

  final FromDtoMapper<QuerySnapshot<TodoItemDto>, TodoDataSnapshotModel>
      _snapshotFromDtoMapper;

  TodoDataProviderImpl({
    required FirebaseFirestore firebaseFirestore,
    required DtoMapper<TodoDto, TodoModel> todoDtoMapper,
    required FromDtoMapper<QuerySnapshot<TodoItemDto>, TodoDataSnapshotModel>
        snapshotFromDtoMapper,
  })  : _firebaseFirestore = firebaseFirestore,
        _todoDtoMapper = todoDtoMapper,
        _snapshotFromDtoMapper = snapshotFromDtoMapper;

  CollectionReference<TodoItemDto> _getTodoItemCollection(UserModel user) {
    return _firebaseFirestore
        .collection("user")
        .doc(user.uid)
        .collection("todo")
        .withConverter(
          fromFirestore: (snapshot, _) => TodoItemDto(
            id: snapshot.id,
            todo: TodoDto.fromFirestore(snapshot.data()!),
          ),
          toFirestore: (model, _) => model.todo.toFirestore(),
        );
  }

  CollectionReference<TodoDto> _getTodoDtoCollection(UserModel user) {
    return _firebaseFirestore
        .collection("user")
        .doc(user.uid)
        .collection("todo")
        .withConverter(
          fromFirestore: (snapshot, _) =>
              TodoDto.fromFirestore(snapshot.data()!),
          toFirestore: (model, _) => model.toFirestore(),
        );
  }

  @override
  Future<LoadedTasksResult> loadTasks(
      UserModel user, TodoSortMechanism mechanism) async {
    final response = await _getTodoItemCollection(user)
        .orderBy(mechanism.fieldName, descending: mechanism.descending)
        .get();
    final list = response.docs.map((element) {
      final data = element.data().todo;
      final id = element.id;

      return TodoItem(
        todoModel: _todoDtoMapper.mapFromDto(data),
        id: id,
      );
    }).toList();

    return LoadedTasksResult.success(entity: list);
  }

  @override
  Stream<TodoDataSnapshotModel> onTodoChanged(
      UserModel user, TodoSortMechanism mechanism) {
    return _getTodoItemCollection(user)
        .orderBy(mechanism.fieldName, descending: mechanism.descending)
        .snapshots()
        .map(
          (snapshot) => _snapshotFromDtoMapper.mapFromDto(snapshot),
        );
  }

  @override
  Future<void> addTodo(UserModel userModel, TodoModel todo) async {
    await _getTodoDtoCollection(userModel)
        .add(_todoDtoMapper.mapFromModel(todo));
  }

  @override
  Future<void> removeTodo(UserModel userModel, String id) async {
    await _getTodoItemCollection(userModel).doc(id).delete();
  }

  @override
  Future<void> modifyTodo(UserModel userModel, TodoItem todoItem) async {
    final dto = _todoDtoMapper.mapFromModel(todoItem.todoModel);
    final id = todoItem.id;

    await _getTodoDtoCollection(userModel).doc(id).update(dto.toFirestore());
  }

  @override
  Future<TodoItem> getTodo(UserModel userModel, String id) async {
    final dtoItem = await _getTodoItemCollection(userModel).doc(id).get();

    return TodoItem(
      todoModel: _todoDtoMapper.mapFromDto(dtoItem.data()!.todo),
      id: id,
    );
  }
}
