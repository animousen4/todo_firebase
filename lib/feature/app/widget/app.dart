import 'package:flutter/material.dart';
import 'package:todo_firebase/feature/app/widget/material_context.dart';
import 'package:todo_firebase/feature/auth/widget/auth_scope.dart';
import 'package:todo_firebase/feature/initialization/model/dependencies.dart';
import 'package:todo_firebase/feature/initialization/widget/dependencies_scope.dart';
import 'package:todo_firebase/feature/settings/widget/settings_scope.dart';

/// The start point of the whole app
/// We define here root scopes for [MaterialContext]
class App extends StatelessWidget {

  /// Public constructor
  const App({super.key, required this.dependencies});

  /// Dependencies container
  final Dependencies dependencies;
  @override
  Widget build(BuildContext context) {
    return DependenciesScope(
      dependencies: dependencies,
      child: SettingsScope(
        settingsBloc: dependencies.settingsBloc,
        child: AuthScope(
          authBloc: dependencies.authBloc,
          child: const MaterialContext(),
        ),
      ),
    );
  }
}
