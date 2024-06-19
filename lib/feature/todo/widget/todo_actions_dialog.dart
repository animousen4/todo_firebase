import 'package:flutter/material.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_model.dart';
import 'package:todo_firebase/feature/todo/widget/todo_scope.dart';

/// Dialog with actions of Todo
class TodoActionsDialog extends StatelessWidget {
  /// Public constructor with provided todo controller
  const TodoActionsDialog({
    super.key,
    required this.todo,
    required this.index,
    required this.todoScopeController,
  });

  /// The todo
  final TodoModel todo;

  /// Controller 
  final TodoScopeController todoScopeController;

  /// Index of the todo in list, so we can use it when use [TodoScopeController]
  final int index;

  @override
  Widget build(BuildContext context) {
    final todoTitle = todo.title;
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "$todoTitle actions:",
                style: titleStyle,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text("Delete"),
              onTap: () => _onDelete(context),
            ),
            // ListTile(
            //   leading: Icon(Icons.edit),
            //   title: Text("Modify"),
            // )
          ],
        ),
      ),
    );
  }

  void _onDelete(BuildContext context) {
    todoScopeController.removeTodo(index);
    Navigator.of(context).pop();
  }
}
