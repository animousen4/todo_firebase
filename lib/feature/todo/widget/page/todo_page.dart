import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo_firebase/feature/auth/widget/auth_scope.dart';
import 'package:todo_firebase/feature/initialization/widget/dependencies_scope.dart';
import 'package:todo_firebase/feature/routes/app_router.dart';
import 'package:todo_firebase/feature/todo/bloc/todo_bloc.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_sort_type.dart';
import 'package:todo_firebase/feature/todo/widget/synchronizer/animated_sync.dart';
import 'package:todo_firebase/feature/todo/widget/todo_add_dialog.dart';
import 'package:todo_firebase/feature/todo/widget/todo_list_item.dart';
import 'package:todo_firebase/feature/todo/widget/todo_scope.dart';
import 'package:todo_firebase/feature/todo/widget/todo_sort_modal_dialog.dart';

@RoutePage()
class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  late final TodoBloc todoBloc;
  @override
  Widget build(BuildContext context) {
    return TodoScope(
      todoBloc: todoBloc,
      child: const _TodoPageView(),
    );
  }

  @override
  void initState() {
    super.initState();

    final todoRepository =
        DependenciesScope.of(context).repositories.todoRepository;
    todoBloc = TodoBloc(
      initialState:
          const TodoState.idle(todoModels: [], sortType: SortType.complete),
      todoRepository: todoRepository,
    );
  }
}

class _TodoPageView extends StatefulWidget {
  const _TodoPageView();

  @override
  State<_TodoPageView> createState() => _TodoPageViewState();
}

class _TodoPageViewState extends State<_TodoPageView> {
  @override
  Widget build(BuildContext context) {
    final todoController = TodoScope.of(context);

    return Scaffold(
      body: const CustomScrollView(
        slivers: [
          _TodoSliverAppBar(),
          SliverToBoxAdapter(
            child: _DropdownSort(),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            sliver: _TodoSliverList(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => TodoAddDialog(
              todoScopeController: todoController,
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    TodoScope.of(context, listen: false).loadTodos();
  }
}

class _TodoSliverList extends StatelessWidget {
  const _TodoSliverList();

  @override
  Widget build(BuildContext context) {
    final todoController = TodoScope.of(context);
    final items = todoController.state.todoModels;
    return SliverAnimatedList(
      key: todoController.listKey,
      itemBuilder: (context, index, animation) => SizeTransition(
        sizeFactor: animation,
        child: TodoListItem(
          model: items[index].todoModel,
          index: index,
        ),
      ),
      initialItemCount: items.length,
    );
  }
}

class _TodoSliverAppBar extends StatelessWidget {
  const _TodoSliverAppBar();

  @override
  Widget build(BuildContext context) {
    final authController = AuthScope.controllerOf(context);
    final todoScope = TodoScope.of(context);
    final todoState = todoScope.state;
    return SliverAppBar(
      title: Row(
        children: [
          const Text("Tasks"),
          const SizedBox(
            width: 10,
          ),
          AnimatedSync(
            isSyncing: todoState.inProgress,
          ),
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {
              context.pushRoute(const SettingsRoute());
            },
            icon: const Icon(Icons.settings_outlined),),
        IconButton(
          onPressed: () {
            authController.logout();
          },
          icon: const Icon(Icons.logout),
        ),
      ],
    );
  }
}

class _DropdownSort extends StatelessWidget {
  const _DropdownSort();

  @override
  Widget build(BuildContext context) {
    final todoScope = TodoScope.of(context);

    final sortMethod = SortMethods.values
        .where(
          (method) => method.sortType == todoScope.state.sortType,
        )
        .toList()
        .first;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        children: [
          const Text("Sort: "),
          TextButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => TodoSortModalDialog(
                        onSubmit: (sortType) => todoScope.sortBy(sortType),
                        initSortType: sortMethod,
                      ),);
            },
            child: Text(sortMethod.name),
          ),
        ],
      ),
    );
  }
}
