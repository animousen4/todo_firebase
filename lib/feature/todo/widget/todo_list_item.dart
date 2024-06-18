import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_item.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_model.dart';
import 'package:todo_firebase/feature/todo/widget/todo_scope.dart';

class TodoListItem extends StatelessWidget {
  const TodoListItem({super.key, required this.todoItem});

  final TodoItem todoItem;

  @override
  Widget build(BuildContext context) {
    final todoController = TodoScope.of(context);
    final model = todoItem.todoModel;
    final id = todoItem.id;
    return ListTile(
      title: Text(model.title),
      onLongPress: () => todoController.removeTodo(id),
      subtitle: Text(
        model.description,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
