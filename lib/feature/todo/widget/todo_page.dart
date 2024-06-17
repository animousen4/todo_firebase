import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:todo_firebase/feature/auth/widget/auth_scope.dart';
import 'package:todo_firebase/feature/initialization/widget/dependencies_scope.dart';
import 'package:todo_firebase/feature/todo/bloc/todo_bloc.dart';
import 'package:todo_firebase/feature/todo/widget/todo_scope.dart';

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

    final todoRepository = DependenciesScope.of(context).repositories.todoRepository;
    todoBloc = TodoBloc(initialState: const TodoState.idle(todoModels: []), todoRepository: todoRepository);
  }
}

class _TodoPageView extends StatefulWidget {
  const _TodoPageView({super.key});

  @override
  State<_TodoPageView> createState() => _TodoPageViewState();
}

class _TodoPageViewState extends State<_TodoPageView> {
  @override
  Widget build(BuildContext context) {
    final authController = AuthScope.controllerOf(context);
    final todoController = TodoScope.of(context);

    final items = todoController.state.todoModels;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text("Tasks"),
            actions: [
              IconButton(
                onPressed: () {
                  authController.logout();
                },
                icon: const Icon(Icons.logout),
              ),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            sliver: SliverStickyHeader(
              header: Text(
                "Tasks",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              sliver: SliverList.builder(
                itemBuilder: (context, index) => ListTile(
                  title: Text(items[index].title),
                  subtitle: Text(
                    items[index].description,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                itemCount: items.length,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    TodoScope.of(context).loadTodos();
  }
}
