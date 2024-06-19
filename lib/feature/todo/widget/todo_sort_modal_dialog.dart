// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:todo_firebase/feature/todo/data/model/todo_sort_type.dart';
import 'package:todo_firebase/feature/todo/widget/todo_scope.dart';

enum SortMethods {
  creationDateAsc(
      "By creation date (ascending)", Icons.date_range, SortType.createDateAsc),
  creationDateDesc("By creation date (descending)", Icons.date_range,
      SortType.createDateDesk),
  deadlineDateDesc("By deadline date (descending)", Icons.date_range,
      SortType.dateDeadlineDesc),
  deadlineDateAsc("By deadline date (descending)", Icons.date_range,
      SortType.dateDeadlineAsc),
  complete("By completion", Icons.check_circle_outline, SortType.complete);

  const SortMethods(this.name, this.icon, this.sortType);
  final String name;
  final IconData icon;
  final SortType sortType;
}

class TodoSortModalDialog extends StatefulWidget {
  const TodoSortModalDialog({
    Key? key,
    required this.initSortType,
    required this.onSubmit,
  }) : super(key: key);

  final SortMethods initSortType;

  final Function(SortType sortType) onSubmit;
  @override
  State<TodoSortModalDialog> createState() => _TodoSortModalDialogState();
}

class _TodoSortModalDialogState extends State<TodoSortModalDialog> {
  late SortMethods sortMethod = widget.initSortType;

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    return BottomSheet(
      onClosing: () {},
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 25, bottom: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Sort type:",
                style: titleStyle,
              ),
            ),
          ),
          _SortTiles(
            builder: (context, index) => RadioListTile<SortMethods>(
              value: SortMethods.values[index],
              groupValue: sortMethod,
              title: Text(SortMethods.values[index].name),
              onChanged: (value) {
                setState(() {
                  sortMethod = value ?? sortMethod;
                });
              },
            ),
            count: SortMethods.values.length,
          ),
          _SubmitButton(
            onSubmit: () {
              widget.onSubmit(sortMethod.sortType);
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton({
    super.key,
    required this.onSubmit,
  });

  final Function() onSubmit;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 20, bottom: 20),
        child: FilledButton(onPressed: onSubmit, child: const Text("Submit")),
      ),
    );
  }
}

class _SortTiles extends StatelessWidget {
  const _SortTiles({super.key, required this.builder, required this.count});

  final Widget Function(BuildContext context, int index) builder;
  final int count;
  @override
  Widget build(BuildContext context) {
    final List<Widget> widgets = [];

    for (int index = 0; index < count; index++) {
      widgets.add(builder(context, index));
    }
    return Column(
      children: widgets,
    );
  }
}
