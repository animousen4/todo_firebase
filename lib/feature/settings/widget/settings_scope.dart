import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_firebase/feature/app/model/theme_model.dart';
import 'package:todo_firebase/feature/settings/bloc/settings_bloc.dart';
import 'package:todo_firebase/feature/settings/widget/controllers.dart';

class SettingsScope extends StatefulWidget {
  const SettingsScope({super.key, required this.child});

  /// Child of the scope
  final Widget child;

  @override
  State<SettingsScope> createState() => _SettingsScopeState();
}

class _SettingsScopeState extends State<SettingsScope>
    implements SettingsScopeController {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) =>
            _InheritedSettingsScope(child: widget.child, controller: this));
  }

  @override
  // TODO: implement locale
  Locale get locale => throw UnimplementedError();

  @override
  void setLocale(Locale locale) {
    // TODO: implement setLocale
  }

  @override
  void setThemeMode(ThemeMode themeMode) {
    // TODO: implement setThemeMode
  }

  @override
  // TODO: implement theme
  ThemeModel get theme => throw UnimplementedError();
}

class _InheritedSettingsScope extends InheritedWidget {
  const _InheritedSettingsScope(
      {super.key, required super.child, required this.controller});

  final SettingsScopeController controller;

  @override
  bool updateShouldNotify(_InheritedSettingsScope oldWidget) {
    return true;
  }
}
