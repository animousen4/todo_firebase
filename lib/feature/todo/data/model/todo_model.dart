import 'package:todo_firebase/feature/todo/data/model/todo_status.dart';

class TodoModel {
  final String title;
  final String description;
  final DateTime createDate;
  final DateTime deadlineDate;
  final TodoStatus todoStatus;

  TodoModel({
    required this.title,
    required this.description,
    required this.createDate,
    required this.deadlineDate,
    required this.todoStatus,
  });
}
