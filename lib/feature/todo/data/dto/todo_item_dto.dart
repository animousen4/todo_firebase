// ignore_for_file: public_member_api_docs

import 'package:todo_firebase/feature/todo/data/dto/todo_dto.dart';

/// Dto, containing ID of document
/// We use this id for specifing the concrete document in 
/// operations like `update` or `remove`
class TodoItemDto {
  final String id;
  final TodoDto todo;

  TodoItemDto({required this.id, required this.todo});
}
