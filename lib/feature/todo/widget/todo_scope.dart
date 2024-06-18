import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_firebase/core/utils/build_context_extension.dart';
import 'package:todo_firebase/feature/todo/bloc/todo_bloc.dart';
import 'package:todo_firebase/feature/todo/data/dto/todo_dto.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_model.dart';
import 'package:todo_firebase/feature/todo/widget/todo_list_item.dart';

abstract interface class TodoScopeController {
  TodoState get state;
  GlobalKey<SliverAnimatedListState> get listKey;

  void addTodo(TodoModel model);
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
  final _listKey = GlobalKey<SliverAnimatedListState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoBloc, TodoState>(
      bloc: widget.todoBloc,
      builder: (context, state) => _InheritToDoScope(
        state: state,
        controller: this,
        listKey: _listKey,
        child: widget.child,
      ),
      listener: (context, state) {
        final snapshot = state.snapshot;
        if (snapshot != null) {
          for (final change in snapshot.changes) {
            change.mapOrNull(
              added: (addedChange) =>
                  listKey.currentState?.insertItem(addedChange.newIndex),
              removed: (removedChange) {
                final removedElement = removedChange.todoModel;
                listKey.currentState?.removeItem(
                    removedChange.oldIndex,
                    (context, animation) => AnimatedBuilder(
                          animation: animation,
                          builder: (context, child) => SizeTransition(
                            sizeFactor: animation,
                            child: SlideTransition(
                              position: animation.drive(Tween(
                                  begin: const Offset(1.0, 0.0),
                                  end: const Offset(0.0, 0.0))),
                              child: FadeTransition(
                                  opacity: animation, child: child),
                            ),
                          ),
                          child: TodoListItem(todoModel: removedElement),
                        ));
              },
            );
          }
        }
      },
    );
  }

  @override
  void loadTodos() {
    widget.todoBloc.add(const TodoEvent.loadTodos());
  }

  @override
  void initState() {
    super.initState();

    _listKey.currentState?;
  }
  @override
  TodoState get state => widget.todoBloc.state;

  @override
  GlobalKey<SliverAnimatedListState> get listKey => _listKey;

  @override
  void addTodo(TodoModel model) {
    widget.todoBloc.add(TodoEvent.addTodo(todoModel: model));
  }
}

class _InheritToDoScope extends InheritedWidget {
  final TodoScopeController controller;

  final GlobalKey<SliverAnimatedListState> listKey;

  final TodoState state;

  const _InheritToDoScope(
      {required super.child,
      required this.controller,
      required this.state,
      required this.listKey});
  @override
  bool updateShouldNotify(_InheritToDoScope oldWidget) {
    return state != oldWidget.state;
  }
}
