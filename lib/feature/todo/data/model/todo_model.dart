// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:todo_firebase/feature/todo/data/model/todo_status.dart';

class TodoModel {
  final String title;

  final String description;

  final DateTime createDate;

  final DateTime deadlineDate;

  final TodoStatus todoStatus;

  TodoModel(
      {required this.title,
      required this.description,
      required this.createDate,
      required this.deadlineDate,
      required this.todoStatus});

  TodoModel copyWith({
    String? title,
    String? description,
    DateTime? createDate,
    DateTime? deadlineDate,
    TodoStatus? todoStatus,
  }) {
    return TodoModel(
      title: title ?? this.title,
      description: description ?? this.description,
      createDate: createDate ?? this.createDate,
      deadlineDate: deadlineDate ?? this.deadlineDate,
      todoStatus: todoStatus ?? this.todoStatus,
    );
  }
}
