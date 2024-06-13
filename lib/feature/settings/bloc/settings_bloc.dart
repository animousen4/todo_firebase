import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_firebase/feature/app/model/theme_model.dart';
import 'package:todo_firebase/feature/settings/data/repository/locale_repository.dart';
import 'package:todo_firebase/feature/settings/data/repository/theme_repository.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final LocaleRepository _localeRepository;

  final ThemeRepository _themeRepository;

  SettingsBloc({
    required SettingsState initState,
    required LocaleRepository localeRepository,
    required ThemeRepository themeRepository,
  })  : _themeRepository = themeRepository,
        _localeRepository = localeRepository,
        super(initState) {
    on<SettingsEvent>((event, emit) {
      event.map(
        updateTheme: (event) => _updateTheme(event, emit),
        updateLocale: (event) => _updateLocale(event, emit),
      );
    });
  }

  Future<void> _updateTheme(
    _UpdateTheme event,
    Emitter<SettingsState> emit,
  ) async {
    emit(
      SettingsState.progress(
        theme: state.theme,
        locale: state.locale,
      ),
    );

    try {
      await _themeRepository.setTheme(event.themeModel);

      emit(
        SettingsState.idle(
          theme: event.themeModel,
          locale: state.locale,
        ),
      );
    } on Object catch (error) {
      emit(
        SettingsState.error(
          theme: state.theme,
          locale: state.locale,
          error: error,
        ),
      );

      rethrow;
    }
  }

  Future<void> _updateLocale(
      _UpdateLocale event, Emitter<SettingsState> emit) async {
    emit(
      SettingsState.progress(
        theme: state.theme,
        locale: state.locale,
      ),
    );

    try {
      await _localeRepository.setLocale(event.locale);

      emit(
        SettingsState.success(theme: state.theme, locale: event.locale),
      );
    } on Object catch (error) {
      emit(
        SettingsState.error(
          theme: state.theme,
          locale: state.locale,
          error: error,
        ),
      );

      rethrow;
    }
  }
}
