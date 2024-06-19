import 'package:flutter/material.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_model.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_status.dart';
import 'package:todo_firebase/feature/todo/widget/todo_actions_dialog.dart';
import 'package:todo_firebase/feature/todo/widget/todo_scope.dart';

class TodoListItem extends StatelessWidget {
  const TodoListItem({super.key, required this.model, required this.index});

  final TodoModel model;

  final int index;

  @override
  Widget build(BuildContext context) {
    final todoController = TodoScope.of(context);
    return ListTile(
      title: Text(model.title),
      leading: GestureDetector(
        child: Icon(
          model.todoStatus.map(
            planned: (_) => Icons.circle_outlined,
            completed: (_) => Icons.task_alt_outlined,
          ),
        ),
        onTap: () => todoController.markTodo(
          index,
          model.todoStatus.map(
            planned: (_) => const TodoStatus.completed(),
            completed: (_) => const TodoStatus.planned(),
          ),
        ),
      ),
      onLongPress: () => _onLongPress(context, todoController),
      subtitle: Text(
        model.description,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  void _onLongPress(BuildContext context, TodoScopeController controller) {
    showDialog(
      context: context,
      builder: (context) => TodoActionsDialog(
        todo: model,
        index: index,
        todoScopeController: controller,
      ),
    );
  }
}
