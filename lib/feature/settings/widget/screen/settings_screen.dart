import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo_firebase/feature/settings/widget/controllers.dart';
import 'package:todo_firebase/feature/settings/widget/settings_scope.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late LocaleScopeController localeScopeController;
  late ThemeScopeController themeScopeController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: CustomScrollView(
        slivers: [
          /// Settings
        ],
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    localeScopeController = SettingsScope.localeControllerOf(context);
    themeScopeController = SettingsScope.themeControllerOf(context);
  }
}
