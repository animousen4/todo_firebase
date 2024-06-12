import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_firebase/feature/app/model/theme_model.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(_Idle()) {
    on<SettingsEvent>((event, emit) {
      event.map(
          updateTheme: (event) => _updateTheme(event.themeModel, emit),
          updateLocale: (event) => _updateLocale(event.locale, emit));
    });
  }

  _updateTheme(ThemeModel themeModel, Emitter<SettingsState> emit) {}

  _updateLocale(Locale locale, Emitter<SettingsState> updateLocale) {}
}
