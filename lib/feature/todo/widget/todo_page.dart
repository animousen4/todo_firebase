import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:todo_firebase/feature/auth/widget/auth_scope.dart';

@RoutePage()
class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    final authController = AuthScope.controllerOf(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text("Home"),
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
            padding: EdgeInsets.symmetric(horizontal: 15),
            sliver: SliverStickyHeader(
              header: Text(
                "Tasks",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              sliver: SliverList.list(children: []),
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
}