import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_firebase/core/utils/build_context_extension.dart';
import 'package:todo_firebase/feature/todo/bloc/todo_bloc.dart';
import 'package:todo_firebase/feature/todo/data/dto/todo_dto.dart';

abstract interface class TodoScopeController {
  TodoState get state;
  void loadTodos();

}

class TodoScope extends StatefulWidget {
  const TodoScope({super.key, required this.todoBloc, required this.child});

  final TodoBloc todoBloc;

  final Widget child;

  static TodoScopeController of(BuildContext context, {bool listen = true}) =>
      context.inhOf<_InheritToDoScope>(listen: listen).controller;
  @override
  State<TodoScope> createState() => _TodoScopeState();
}

class _TodoScopeState extends State<TodoScope> implements TodoScopeController {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(
      bloc: widget.todoBloc,
      builder: (context, state) => _InheritToDoScope(
        state: state,
        controller: this,
        child: widget.child,
      ),
    );
  }

  @override
  void loadTodos() {
    widget.todoBloc.add(const TodoEvent.loadTodos());
  }

  @override
  TodoState get state => widget.todoBloc.state;
}

class _InheritToDoScope extends InheritedWidget {
  final TodoScopeController controller;

  final TodoState state;

  const _InheritToDoScope({
    required super.child,
    required this.controller,
    required this.state,
  });
  @override
  bool updateShouldNotify(_InheritToDoScope oldWidget) {
    return state != oldWidget.state;
  }
}
