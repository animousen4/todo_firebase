import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo_firebase/feature/settings/widget/controllers.dart';
import 'package:todo_firebase/feature/settings/widget/settings_scope.dart';

@RoutePage()
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
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text("Settings"),
          ),
          SliverList.list(children: const [_DarkThemeSwitch()])
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

class _DarkThemeSwitch extends StatelessWidget {
  const _DarkThemeSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final settingsScopeController = SettingsScope.themeControllerOf(context);
    final enabled = settingsScopeController.theme.isDark;
    return SwitchListTile(
      value: enabled,
      title: Text("Dark theme"),
      onChanged: (value) {
        final themeMode = value ? ThemeMode.dark : ThemeMode.light;
        settingsScopeController.setThemeMode(themeMode);
      },
    );
  }
}
