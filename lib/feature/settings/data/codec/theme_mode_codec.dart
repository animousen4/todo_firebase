import 'dart:convert';

import 'package:flutter/material.dart';

/// Codec of theme for decoding it from String and encoding from [ThemeMode]
class ThemeModeCodec extends Codec<ThemeMode, String> {
  @override
  Converter<String, ThemeMode> get decoder => _ThemeModeDecoder();

  @override
  Converter<ThemeMode, String> get encoder => _ThemeModeEncoder();
}

class _ThemeModeDecoder extends Converter<String, ThemeMode> {
  @override
  ThemeMode convert(String input) {
    switch (input) {
      case "dark":
        return ThemeMode.dark;
      case "light":
        return ThemeMode.light;
      case "system":
        return ThemeMode.system;
      default:
        throw ArgumentError.value(input, "input", "Not able to convert argument to ThemeMode");
    }
  }
}

class _ThemeModeEncoder extends Converter<ThemeMode, String> {
  @override
  String convert(ThemeMode input) {
    switch (input) {
      case ThemeMode.dark:
        return "dark";
      case ThemeMode.light:
        return "light";
      case ThemeMode.system:
        return "system";
    }
  }
}
