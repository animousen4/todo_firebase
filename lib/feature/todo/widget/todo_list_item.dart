import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_model.dart';

class TodoListItem extends StatelessWidget {
  const TodoListItem({super.key, required this.todoModel});

  final TodoModel todoModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todoModel.title),
      subtitle: Text(
        todoModel.description,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
