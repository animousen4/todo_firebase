import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo_firebase/feature/sign_in/widget/validation_text_field.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_model.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_status.dart';
import 'package:todo_firebase/feature/todo/widget/todo_scope.dart';

class TodoAddDialog extends StatefulWidget {
  const TodoAddDialog({super.key, required this.todoScopeController});

  final TodoScopeController todoScopeController;

  @override
  State<TodoAddDialog> createState() => _TodoAddDialogState();
}

class _TodoAddDialogState extends State<TodoAddDialog> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  late TodoModel _todoModel;

  late final Listenable _observer;

  late final ValueNotifier<String?> _titleError = ValueNotifier(null);
  late final ValueNotifier<String?> _descriptionError = ValueNotifier(null);

  late final ValueNotifier<bool> _addValid = ValueNotifier(false);

  late final List<String? Function(TodoModel data)> _validations;

  late final List<TextEditingController> _controllers;
  late final List<ValueNotifier<String?>> _errors;

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 22),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Add todo",
              style: titleStyle,
            ),
            const SizedBox(
              height: 14,
            ),
            ValidationTextField(
              error: _titleError,
              controller: _titleController,
              decorationLabel: Text("Title"),
            ),
            const SizedBox(
              height: 14,
            ),
            ValidationTextField(
                error: _descriptionError,
                controller: _descriptionController,
                decorationLabel: Text("Description")),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Cancel")),
                ListenableBuilder(
                  listenable: _addValid,
                  builder: (context, child) {
                    return FilledButton(
                        onPressed: _addValid.value
                            ? () {
                                widget.todoScopeController.addTodo(_todoModel);
                                Navigator.of(context).pop();
                              }
                            : null,
                        child: child);
                  },
                  child: Text("Add"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    _controllers = [
      _titleController,
      _descriptionController,
    ];

    _errors = [
      _titleError,
      _descriptionError,
    ];

    _validations = [
      (data) =>
          _titleError.value = data.title.isEmpty ? "Should be not empty" : null,
    ];

    _observer = Listenable.merge(_controllers);

    _observer.addListener(_onInputDataChanged);
  }

  void _onInputDataChanged() {
    _todoModel = TodoModel(
      title: _titleController.text,
      description: _descriptionController.text,
      createDate: DateTime.now(),
      deadlineDate: DateTime.now(), // change
      todoStatus: const TodoStatus.planned(),
    );

    _addValid.value = _validate(_todoModel);
  }

  bool _validate(TodoModel data) {
    for (final validation in _validations) {
      final result = validation(data);

      if (result != null) {
        return false;
      }
    }

    return true;
  }
}
