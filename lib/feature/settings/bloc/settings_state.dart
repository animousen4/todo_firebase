part of 'settings_bloc.dart';

/// Setting state for managing settings
@freezed
class SettingsState with _$SettingsState {
  /// Idle state
  const factory SettingsState.idle({ThemeModel? theme, Locale? locale}) = _Idle;

  /// Success state (update was successed)
  const factory SettingsState.success({ThemeModel? theme, Locale? locale}) = _Success;

  /// Progress state (update in progress)
  const factory SettingsState.progress({ThemeModel? theme, Locale? locale}) = _Progress;

  /// Error state (something went wrong) with provided error
  const factory SettingsState.error({ThemeModel? theme, Locale? locale, Object? error}) = _Error;
}
