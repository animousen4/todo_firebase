import 'dart:convert';
import 'dart:ui' as ui;

class LocaleCodec extends Codec<ui.Locale, String> {
  @override
  Converter<String, ui.Locale> get decoder => _LocaleDecoder();

  @override
  Converter<ui.Locale, String> get encoder => _LocaleEncoder();
}

class _LocaleDecoder extends Converter<String, ui.Locale> {
  @override
  ui.Locale convert(String input) {
    return ui.Locale.fromSubtags(languageCode: input);
  }
}

class _LocaleEncoder extends Converter<ui.Locale, String> {
  @override
  String convert(ui.Locale input) {
    return input.languageCode;
  }

}
