import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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

  DateTime _deadlineDateTime = DateTime.now().add(const Duration(minutes: 30));

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
              decorationLabel: Text("Description"),
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Text(_toDateString(_deadlineDateTime)),
                  onTap: () async {
                    final pickedDate = await showDatePicker(
                      context: context,
                      initialDate: _deadlineDateTime,
                      firstDate: DateTime.now(),
                      lastDate: DateTime(
                        3000,
                      ),
                    );
                    _deadlineDateTime = _deadlineDateTime.copyWith(
                      day: pickedDate?.day,
                      month: pickedDate?.month,
                      year: pickedDate?.year,
                    );

                    setState(() {});

                    _onInputDataChanged();
                  },
                ),
                GestureDetector(
                  child: Text(_toTimeString(_deadlineDateTime)),
                  onTap: () async {
                    final time = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.fromDateTime(_deadlineDateTime),
                    );

                    setState(() {
                      _deadlineDateTime = _deadlineDateTime.copyWith(
                        hour: time?.hour,
                        minute: time?.minute,
                      );
                    });

                    _onInputDataChanged();
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const _CancelButton(),
                _SumbitButton(
                  addValid: _addValid,
                  widget: widget,
                  todoModel: () => _todoModel,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _toDateString(DateTime date) {
    return DateFormat.yMMMd().format(date);
  }

  String _toTimeString(DateTime date) {
    return DateFormat.Hm().format(date);
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
      deadlineDate: _deadlineDateTime,
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

class _CancelButton extends StatelessWidget {
  const _CancelButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: const Text("Cancel"),
    );
  }
}

class _SumbitButton extends StatelessWidget {
  const _SumbitButton({
    super.key,
    required ValueNotifier<bool> addValid,
    required this.widget,
    required TodoModel Function() todoModel,
  })  : _addValid = addValid,
        _todoModel = todoModel;

  final ValueNotifier<bool> _addValid;
  final TodoAddDialog widget;
  final TodoModel Function() _todoModel;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: _addValid,
      builder: (context, child) {
        return FilledButton(
            onPressed: _addValid.value
                ? () {
                    widget.todoScopeController.addTodo(_todoModel());
                    Navigator.of(context).pop();
                  }
                : null,
            child: child);
      },
      child: Text("Add"),
    );
  }
}
