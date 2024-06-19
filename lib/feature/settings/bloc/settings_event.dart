part of 'settings_bloc.dart';

/// Setting events
@freezed
class SettingsEvent with _$SettingsEvent {
  /// Event of updating theme with provided updated model
  const factory SettingsEvent.updateTheme(ThemeModel themeModel) = _UpdateTheme;

  /// Event of updating locale with provided locale
  const factory SettingsEvent.updateLocale(Locale locale) = _UpdateLocale;

}