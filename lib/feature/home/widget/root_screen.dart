import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo_firebase/feature/auth/widget/auth_scope.dart';
import 'package:todo_firebase/feature/routes/app_router.dart';

@RoutePage()
class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = AuthScope.controllerOf(context).getUser();

    return AutoRouter.declarative(
      routes: (handler) =>
          [if (user == null) const SignInRoute() else const HomeRoute()],
    );
  }
}
