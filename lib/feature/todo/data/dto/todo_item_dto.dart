import 'package:todo_firebase/feature/todo/data/dto/todo_dto.dart';

class TodoItemDto {
  final String id;
  final TodoDto todo;

  TodoItemDto({required this.id, required this.todo});
}
