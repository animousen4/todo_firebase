import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_firebase/core/utils/build_context_extension.dart';
import 'package:todo_firebase/feature/todo/bloc/todo_bloc.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_data_changes_model.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_item.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_model.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_sort_type.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_status.dart';
import 'package:todo_firebase/feature/todo/widget/todo_list_item.dart';

abstract interface class TodoScopeController {
  TodoState get state;
  GlobalKey<SliverAnimatedListState> get listKey;

  void removeTodo(int index);
  void addTodo(TodoModel model);
  void markTodo(int index, TodoStatus status);
  void loadTodos();
  void sortBy(SortType sortType);
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
            _mapChange(change);
          }
        }
      },
    );
  }

  void _mapChange(TodoDataChangesModel change) {
    change.mapOrNull(
      added: _onAddItem,
      modified: _onModifyItem,
      removed: _onRemoveItem,
    );
  }

  void _onRemoveItem(removedChange) {
    final removedElement = removedChange.todoItem;
    listKey.currentState?.removeItem(
      removedChange.oldIndex,
      (context, animation) => _RemoveElementWidget(
        removedElement: removedElement,
        animation: animation,
      ),
      duration: const Duration(milliseconds: 200),
    );
  }

  void _onModifyItem(modifiedChange) {
    final removedElement = modifiedChange.todoItem;
    if (modifiedChange.oldIndex != modifiedChange.newIndex) {
      listKey.currentState?.removeItem(
          modifiedChange.oldIndex,
          (context, animation) => _RemoveElementWidget(
                removedElement: removedElement,
                animation: animation,
              ),
          duration: const Duration(milliseconds: 200),);

      listKey.currentState?.insertItem(
        modifiedChange.newIndex,
        duration: const Duration(milliseconds: 200),
      );
    }
  }

  void _onAddItem(addedChange) => listKey.currentState?.insertItem(
        addedChange.newIndex,
        duration: const Duration(milliseconds: 200),
      );

  @override
  void loadTodos() {
    widget.todoBloc.add(const TodoEvent.loadTodos());
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  TodoState get state => widget.todoBloc.state;

  @override
  GlobalKey<SliverAnimatedListState> get listKey => _listKey;

  @override
  void addTodo(TodoModel model) {
    widget.todoBloc.add(TodoEvent.addTodo(todoModel: model));
  }

  @override
  void removeTodo(int index) {
    widget.todoBloc.add(TodoEvent.removeTodo(index: index));
  }

  @override
  void markTodo(int index, TodoStatus status) {
    widget.todoBloc.add(TodoEvent.markTodo(index: index, status: status));
  }

  @override
  void sortBy(SortType sortType) {
    widget.todoBloc.add(TodoEvent.sortBy(sortType: sortType));
  }
}

class _InheritToDoScope extends InheritedWidget {
  final TodoScopeController controller;

  final GlobalKey<SliverAnimatedListState> listKey;

  final TodoState state;

  const _InheritToDoScope({
    required super.child,
    required this.controller,
    required this.state,
    required this.listKey,
  });
  @override
  bool updateShouldNotify(_InheritToDoScope oldWidget) {
    return state != oldWidget.state;
  }
}

class _RemoveElementWidget extends StatelessWidget {
  const _RemoveElementWidget({
    required this.removedElement,
    required this.animation,
  });

  final TodoItem removedElement;
  final Animation<double> animation;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) => SizeTransition(
        sizeFactor: animation,
        child: child,
      ),
      child: TodoListItem(
        model: removedElement.todoModel,
        index: -1,
      ),
    );
  }
}
