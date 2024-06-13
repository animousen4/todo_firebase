import 'package:flutter/material.dart';
import 'package:todo_firebase/feature/settings/widget/settings_scope.dart';

class MaterialContext extends StatelessWidget {
  const MaterialContext({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = SettingsScope.themeControllerOf(context).theme;
    final locale = SettingsScope.localeControllerOf(context).locale;

    return MaterialApp(
        themeMode: theme.themeMode,
        theme: theme.lightTheme,
        darkTheme: theme.darkTheme,
        locale: locale,
        home: Scaffold(
          body: Text("FFFF"),
        ));
  }
}
