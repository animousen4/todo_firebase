import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_firebase/feature/todo/data/dto/todo_dto.dart';
import 'package:todo_firebase/feature/todo/data/model/mapper/todo_status_mapper.dart';
import 'package:todo_firebase/feature/todo/data/model/mapper/dto_mapper.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_model.dart';

/// [DtoMapper] for [TodoDto] and [TodoModel]
/// We use another mapper [TodoStatusMapper] to map more complex object
class TodoDtoMapper implements DtoMapper<TodoDto, TodoModel> {
  final TodoStatusMapper _statusMapper;

  /// Public constructor
  TodoDtoMapper({required TodoStatusMapper statusMapper}) : _statusMapper = statusMapper;
  @override
  TodoModel mapFromDto(TodoDto data) {
    return TodoModel(
      title: data.title,
      description: data.description,
      createDate: DateTime.fromMillisecondsSinceEpoch(
          data.createDate.millisecondsSinceEpoch,),
      deadlineDate: DateTime.fromMillisecondsSinceEpoch(
          data.deadlineDate.millisecondsSinceEpoch,),
      todoStatus: _statusMapper.mapFromDto(data.todoStatus),
    );
  }

  @override
  TodoDto mapFromModel(TodoModel data) {
    return TodoDto(
      title: data.title,
      description: data.description,
      createDate: Timestamp.fromDate(data.createDate),
      deadlineDate: Timestamp.fromDate(data.deadlineDate),
      todoStatus: _statusMapper.mapFromModel(data.todoStatus),
    );
  }
}
