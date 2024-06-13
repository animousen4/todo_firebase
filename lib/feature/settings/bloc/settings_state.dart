part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.idle({ThemeModel? theme, Locale? locale}) = _Idle;
  const factory SettingsState.progress({ThemeModel? theme, Locale? locale}) = _Progress;
  const factory SettingsState.error({ThemeModel? theme, Locale? locale}) = _Error;
}
