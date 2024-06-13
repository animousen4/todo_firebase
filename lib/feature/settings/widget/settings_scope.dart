import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_firebase/feature/app/model/theme_model.dart';
import 'package:todo_firebase/feature/settings/bloc/settings_bloc.dart';
import 'package:todo_firebase/feature/settings/widget/controllers.dart';

class SettingsScope extends StatefulWidget {
  const SettingsScope({
    super.key,
    required this.settingsBloc,
    required this.child,
  });

  /// Child of the scope
  final Widget child;

  /// Settings bloc
  final SettingsBloc settingsBloc;
  @override
  State<SettingsScope> createState() => _SettingsScopeState();
}

class _SettingsScopeState extends State<SettingsScope>
    implements SettingsScopeController {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      bloc: widget.settingsBloc,
      builder: (context, state) => _InheritedSettingsScope(
        state: state,
        controller: this,
        child: widget.child,
      ),
    );
  }

  @override
  Locale get locale => widget.settingsBloc.state.locale ?? const Locale("en");

  @override
  ThemeModel get theme =>
      widget.settingsBloc.state.theme ??
      ThemeModel(themeMode: ThemeMode.system);

  @override
  void setLocale(Locale locale) {
    widget.settingsBloc.add(SettingsEvent.updateLocale(locale));
  }

  @override
  void setThemeMode(ThemeMode themeMode) {
    widget.settingsBloc
        .add(SettingsEvent.updateTheme(ThemeModel(themeMode: themeMode)));
  }
}

enum SettingsAspect { theme, locale }

class _InheritedSettingsScope extends InheritedModel<SettingsAspect> {
  const _InheritedSettingsScope({
    required super.child,
    required this.controller,
    required this.state,
  });

  final SettingsScopeController controller;

  final SettingsState state;

  @override
  bool updateShouldNotify(_InheritedSettingsScope oldWidget) {
    return state != oldWidget.state;
  }

  @override
  bool updateShouldNotifyDependent(
    _InheritedSettingsScope oldWidget,
    Set<SettingsAspect> dependencies,
  ) {
    if (dependencies.contains(SettingsAspect.theme) &&
        state.theme != oldWidget.state.theme) {
      return true;
    }

    if (dependencies.contains(SettingsAspect.locale) &&
        state.locale?.languageCode != oldWidget.state.locale?.languageCode) {
      return true;
    }

    return false;
  }
}
