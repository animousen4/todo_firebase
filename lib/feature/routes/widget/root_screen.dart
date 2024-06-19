import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo_firebase/feature/auth/widget/auth_scope.dart';
import 'package:todo_firebase/feature/routes/app_router.dart';

@RoutePage()
/// Screen, where decide, whether user has access to app, or no
class RootScreen extends StatelessWidget {

  /// Public constructor
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = AuthScope.controllerOf(context).getUser();

    /// Using declarative router
    return AutoRouter.declarative(
      routes: (handler) =>
          [if (user == null) const AuthRoute() else const HomeRoute()],
    );
  }
}
