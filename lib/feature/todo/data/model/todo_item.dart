// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:todo_firebase/feature/todo/data/model/todo_model.dart';

class TodoItem {
  final TodoModel todoModel;
  final String id;

  TodoItem({required this.todoModel, required this.id});

  TodoItem copyWith({
    TodoModel? todoModel,
    String? id,
  }) {
    return TodoItem(
      todoModel: todoModel ?? this.todoModel,
      id: id ?? this.id,
    );
  }
}
