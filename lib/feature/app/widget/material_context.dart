import 'package:flutter/material.dart';
import 'package:todo_firebase/feature/initialization/widget/dependencies_scope.dart';
import 'package:todo_firebase/feature/settings/widget/settings_scope.dart';

class MaterialContext extends StatelessWidget {
  const MaterialContext({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = SettingsScope.themeControllerOf(context).theme;
    final locale = SettingsScope.localeControllerOf(context).locale;

    final router = DependenciesScope.of(context).appRouter;

    print("build-material-context");
    return MaterialApp.router(
      routerConfig: router.config(),
      themeMode: theme.themeMode,
      theme: theme.lightTheme,
      darkTheme: theme.darkTheme,
      locale: locale,
    );
  }
}
