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

/// Controller of the [TodoScope]
/// Contains methods for the user to interact with his todos
abstract interface class TodoScopeController {
  /// Bloc state of Todos
  TodoState get state;

  /// Key of the Animated list
  /// We need it here, because we listen for changes here and we
  /// notify the animated list about changes
  GlobalKey<SliverAnimatedListState> get listKey;

  /// Removing todo by index in list
  void removeTodo(int index);

  /// Adding todo by passing the model
  void addTodo(TodoModel model);

  /// Marking todo with [TodoStatus]
  void markTodo(int index, TodoStatus status);

  /// Loading todos, only the first time, when we open the page (initial loading)
  void loadTodos();

  /// Sorting todos by some sort type
  void sortBy(SortType sortType);
}

/// The scope with controller
class TodoScope extends StatefulWidget {
  /// Public constructor
  const TodoScope({super.key, required this.todoBloc, required this.child});

  /// Bloc, which manages states of the todos
  final TodoBloc todoBloc;

  /// Child widget, which will get access to controller and states
  final Widget child;

  /// Getting [TodoScopeController] from [BuildContext]
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
        duration: const Duration(milliseconds: 200),
      );

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
