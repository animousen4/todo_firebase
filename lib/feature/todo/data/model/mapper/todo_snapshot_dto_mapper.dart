import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_firebase/feature/todo/data/dto/todo_item_dto.dart';
import 'package:todo_firebase/feature/todo/data/model/mapper/dto_mapper.dart';
import 'package:todo_firebase/feature/todo/data/model/mapper/todo_dto_mapper.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_data_changes_model.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_data_snapshot_model.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_item.dart';

/// Mapper for [QuerySnapshot] and [TodoDataSnapshotModel]
/// Only with [FromDtoMapper], because its not required for 
/// mapping entity to Dto, just receiveing
class TodoSnapshotDtoMapper
    implements
        FromDtoMapper<QuerySnapshot<TodoItemDto>, TodoDataSnapshotModel> {
  final TodoDtoMapper _todoDtoMapper;

  /// Public constructor
  TodoSnapshotDtoMapper({required TodoDtoMapper todoDtoMapper})
      : _todoDtoMapper = todoDtoMapper;

  @override
  TodoDataSnapshotModel mapFromDto(QuerySnapshot<TodoItemDto> snapshot) {
    return TodoDataSnapshotModel(
      dataList: snapshot.docs
          .map(
            (element) => TodoItem(
              todoModel: _todoDtoMapper.mapFromDto(element.data().todo),
              id: element.id,
            ),
          )
          .toList(),
      changes: snapshot.docChanges.map((element) {
        final data = element.doc.data()!;

        final model = _todoDtoMapper.mapFromDto(data.todo);
        final item = TodoItem(todoModel: model, id: data.id);

        return switch (element.type) {
          DocumentChangeType.added => TodoDataChangesModel.added(
              todoItem: item,
              newIndex: element.newIndex,
            ),
          DocumentChangeType.removed => TodoDataChangesModel.removed(
              todoItem: item,
              oldIndex: element.oldIndex,
            ),
          DocumentChangeType.modified => TodoDataChangesModel.modified(
              todoItem: item,
              newIndex: element.newIndex,
              oldIndex: element.oldIndex,
            )
        };
      }).toList(),
    );
  }
}
