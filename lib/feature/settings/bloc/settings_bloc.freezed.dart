// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeModel themeModel) updateTheme,
    required TResult Function(Locale locale) updateLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeModel themeModel)? updateTheme,
    TResult? Function(Locale locale)? updateLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeModel themeModel)? updateTheme,
    TResult Function(Locale locale)? updateLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTheme value) updateTheme,
    required TResult Function(_UpdateLocale value) updateLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateTheme value)? updateTheme,
    TResult? Function(_UpdateLocale value)? updateLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTheme value)? updateTheme,
    TResult Function(_UpdateLocale value)? updateLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateThemeImplCopyWith<$Res> {
  factory _$$UpdateThemeImplCopyWith(
          _$UpdateThemeImpl value, $Res Function(_$UpdateThemeImpl) then) =
      __$$UpdateThemeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeModel themeModel});
}

/// @nodoc
class __$$UpdateThemeImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$UpdateThemeImpl>
    implements _$$UpdateThemeImplCopyWith<$Res> {
  __$$UpdateThemeImplCopyWithImpl(
      _$UpdateThemeImpl _value, $Res Function(_$UpdateThemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeModel = null,
  }) {
    return _then(_$UpdateThemeImpl(
      null == themeModel
          ? _value.themeModel
          : themeModel // ignore: cast_nullable_to_non_nullable
              as ThemeModel,
    ));
  }
}

/// @nodoc

class _$UpdateThemeImpl implements _UpdateTheme {
  const _$UpdateThemeImpl(this.themeModel);

  @override
  final ThemeModel themeModel;

  @override
  String toString() {
    return 'SettingsEvent.updateTheme(themeModel: $themeModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateThemeImpl &&
            (identical(other.themeModel, themeModel) ||
                other.themeModel == themeModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateThemeImplCopyWith<_$UpdateThemeImpl> get copyWith =>
      __$$UpdateThemeImplCopyWithImpl<_$UpdateThemeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeModel themeModel) updateTheme,
    required TResult Function(Locale locale) updateLocale,
  }) {
    return updateTheme(themeModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeModel themeModel)? updateTheme,
    TResult? Function(Locale locale)? updateLocale,
  }) {
    return updateTheme?.call(themeModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeModel themeModel)? updateTheme,
    TResult Function(Locale locale)? updateLocale,
    required TResult orElse(),
  }) {
    if (updateTheme != null) {
      return updateTheme(themeModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTheme value) updateTheme,
    required TResult Function(_UpdateLocale value) updateLocale,
  }) {
    return updateTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateTheme value)? updateTheme,
    TResult? Function(_UpdateLocale value)? updateLocale,
  }) {
    return updateTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTheme value)? updateTheme,
    TResult Function(_UpdateLocale value)? updateLocale,
    required TResult orElse(),
  }) {
    if (updateTheme != null) {
      return updateTheme(this);
    }
    return orElse();
  }
}

abstract class _UpdateTheme implements SettingsEvent {
  const factory _UpdateTheme(final ThemeModel themeModel) = _$UpdateThemeImpl;

  ThemeModel get themeModel;
  @JsonKey(ignore: true)
  _$$UpdateThemeImplCopyWith<_$UpdateThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateLocaleImplCopyWith<$Res> {
  factory _$$UpdateLocaleImplCopyWith(
          _$UpdateLocaleImpl value, $Res Function(_$UpdateLocaleImpl) then) =
      __$$UpdateLocaleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class __$$UpdateLocaleImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$UpdateLocaleImpl>
    implements _$$UpdateLocaleImplCopyWith<$Res> {
  __$$UpdateLocaleImplCopyWithImpl(
      _$UpdateLocaleImpl _value, $Res Function(_$UpdateLocaleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$UpdateLocaleImpl(
      null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$UpdateLocaleImpl implements _UpdateLocale {
  const _$UpdateLocaleImpl(this.locale);

  @override
  final Locale locale;

  @override
  String toString() {
    return 'SettingsEvent.updateLocale(locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLocaleImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLocaleImplCopyWith<_$UpdateLocaleImpl> get copyWith =>
      __$$UpdateLocaleImplCopyWithImpl<_$UpdateLocaleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeModel themeModel) updateTheme,
    required TResult Function(Locale locale) updateLocale,
  }) {
    return updateLocale(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeModel themeModel)? updateTheme,
    TResult? Function(Locale locale)? updateLocale,
  }) {
    return updateLocale?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeModel themeModel)? updateTheme,
    TResult Function(Locale locale)? updateLocale,
    required TResult orElse(),
  }) {
    if (updateLocale != null) {
      return updateLocale(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTheme value) updateTheme,
    required TResult Function(_UpdateLocale value) updateLocale,
  }) {
    return updateLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateTheme value)? updateTheme,
    TResult? Function(_UpdateLocale value)? updateLocale,
  }) {
    return updateLocale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTheme value)? updateTheme,
    TResult Function(_UpdateLocale value)? updateLocale,
    required TResult orElse(),
  }) {
    if (updateLocale != null) {
      return updateLocale(this);
    }
    return orElse();
  }
}

abstract class _UpdateLocale implements SettingsEvent {
  const factory _UpdateLocale(final Locale locale) = _$UpdateLocaleImpl;

  Locale get locale;
  @JsonKey(ignore: true)
  _$$UpdateLocaleImplCopyWith<_$UpdateLocaleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  ThemeModel? get theme => throw _privateConstructorUsedError;
  Locale? get locale => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeModel? theme, Locale? locale) idle,
    required TResult Function(ThemeModel? theme, Locale? locale) success,
    required TResult Function(ThemeModel? theme, Locale? locale) progress,
    required TResult Function(ThemeModel? theme, Locale? locale, Object? error)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeModel? theme, Locale? locale)? idle,
    TResult? Function(ThemeModel? theme, Locale? locale)? success,
    TResult? Function(ThemeModel? theme, Locale? locale)? progress,
    TResult? Function(ThemeModel? theme, Locale? locale, Object? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeModel? theme, Locale? locale)? idle,
    TResult Function(ThemeModel? theme, Locale? locale)? success,
    TResult Function(ThemeModel? theme, Locale? locale)? progress,
    TResult Function(ThemeModel? theme, Locale? locale, Object? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Success value) success,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Success value)? success,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Success value)? success,
    TResult Function(_Progress value)? progress,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({ThemeModel? theme, Locale? locale});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = freezed,
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeModel?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdleImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$IdleImplCopyWith(
          _$IdleImpl value, $Res Function(_$IdleImpl) then) =
      __$$IdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeModel? theme, Locale? locale});
}

/// @nodoc
class __$$IdleImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$IdleImpl>
    implements _$$IdleImplCopyWith<$Res> {
  __$$IdleImplCopyWithImpl(_$IdleImpl _value, $Res Function(_$IdleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = freezed,
    Object? locale = freezed,
  }) {
    return _then(_$IdleImpl(
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeModel?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc

class _$IdleImpl implements _Idle {
  const _$IdleImpl({this.theme, this.locale});

  @override
  final ThemeModel? theme;
  @override
  final Locale? locale;

  @override
  String toString() {
    return 'SettingsState.idle(theme: $theme, locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleImpl &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdleImplCopyWith<_$IdleImpl> get copyWith =>
      __$$IdleImplCopyWithImpl<_$IdleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeModel? theme, Locale? locale) idle,
    required TResult Function(ThemeModel? theme, Locale? locale) success,
    required TResult Function(ThemeModel? theme, Locale? locale) progress,
    required TResult Function(ThemeModel? theme, Locale? locale, Object? error)
        error,
  }) {
    return idle(theme, locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeModel? theme, Locale? locale)? idle,
    TResult? Function(ThemeModel? theme, Locale? locale)? success,
    TResult? Function(ThemeModel? theme, Locale? locale)? progress,
    TResult? Function(ThemeModel? theme, Locale? locale, Object? error)? error,
  }) {
    return idle?.call(theme, locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeModel? theme, Locale? locale)? idle,
    TResult Function(ThemeModel? theme, Locale? locale)? success,
    TResult Function(ThemeModel? theme, Locale? locale)? progress,
    TResult Function(ThemeModel? theme, Locale? locale, Object? error)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(theme, locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Success value) success,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Error value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Success value)? success,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Error value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Success value)? success,
    TResult Function(_Progress value)? progress,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements SettingsState {
  const factory _Idle({final ThemeModel? theme, final Locale? locale}) =
      _$IdleImpl;

  @override
  ThemeModel? get theme;
  @override
  Locale? get locale;
  @override
  @JsonKey(ignore: true)
  _$$IdleImplCopyWith<_$IdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeModel? theme, Locale? locale});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = freezed,
    Object? locale = freezed,
  }) {
    return _then(_$SuccessImpl(
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeModel?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({this.theme, this.locale});

  @override
  final ThemeModel? theme;
  @override
  final Locale? locale;

  @override
  String toString() {
    return 'SettingsState.success(theme: $theme, locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeModel? theme, Locale? locale) idle,
    required TResult Function(ThemeModel? theme, Locale? locale) success,
    required TResult Function(ThemeModel? theme, Locale? locale) progress,
    required TResult Function(ThemeModel? theme, Locale? locale, Object? error)
        error,
  }) {
    return success(theme, locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeModel? theme, Locale? locale)? idle,
    TResult? Function(ThemeModel? theme, Locale? locale)? success,
    TResult? Function(ThemeModel? theme, Locale? locale)? progress,
    TResult? Function(ThemeModel? theme, Locale? locale, Object? error)? error,
  }) {
    return success?.call(theme, locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeModel? theme, Locale? locale)? idle,
    TResult Function(ThemeModel? theme, Locale? locale)? success,
    TResult Function(ThemeModel? theme, Locale? locale)? progress,
    TResult Function(ThemeModel? theme, Locale? locale, Object? error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(theme, locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Success value) success,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Success value)? success,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Success value)? success,
    TResult Function(_Progress value)? progress,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements SettingsState {
  const factory _Success({final ThemeModel? theme, final Locale? locale}) =
      _$SuccessImpl;

  @override
  ThemeModel? get theme;
  @override
  Locale? get locale;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgressImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$ProgressImplCopyWith(
          _$ProgressImpl value, $Res Function(_$ProgressImpl) then) =
      __$$ProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeModel? theme, Locale? locale});
}

/// @nodoc
class __$$ProgressImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$ProgressImpl>
    implements _$$ProgressImplCopyWith<$Res> {
  __$$ProgressImplCopyWithImpl(
      _$ProgressImpl _value, $Res Function(_$ProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = freezed,
    Object? locale = freezed,
  }) {
    return _then(_$ProgressImpl(
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeModel?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc

class _$ProgressImpl implements _Progress {
  const _$ProgressImpl({this.theme, this.locale});

  @override
  final ThemeModel? theme;
  @override
  final Locale? locale;

  @override
  String toString() {
    return 'SettingsState.progress(theme: $theme, locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressImpl &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressImplCopyWith<_$ProgressImpl> get copyWith =>
      __$$ProgressImplCopyWithImpl<_$ProgressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeModel? theme, Locale? locale) idle,
    required TResult Function(ThemeModel? theme, Locale? locale) success,
    required TResult Function(ThemeModel? theme, Locale? locale) progress,
    required TResult Function(ThemeModel? theme, Locale? locale, Object? error)
        error,
  }) {
    return progress(theme, locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeModel? theme, Locale? locale)? idle,
    TResult? Function(ThemeModel? theme, Locale? locale)? success,
    TResult? Function(ThemeModel? theme, Locale? locale)? progress,
    TResult? Function(ThemeModel? theme, Locale? locale, Object? error)? error,
  }) {
    return progress?.call(theme, locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeModel? theme, Locale? locale)? idle,
    TResult Function(ThemeModel? theme, Locale? locale)? success,
    TResult Function(ThemeModel? theme, Locale? locale)? progress,
    TResult Function(ThemeModel? theme, Locale? locale, Object? error)? error,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(theme, locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Success value) success,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Error value) error,
  }) {
    return progress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Success value)? success,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Error value)? error,
  }) {
    return progress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Success value)? success,
    TResult Function(_Progress value)? progress,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(this);
    }
    return orElse();
  }
}

abstract class _Progress implements SettingsState {
  const factory _Progress({final ThemeModel? theme, final Locale? locale}) =
      _$ProgressImpl;

  @override
  ThemeModel? get theme;
  @override
  Locale? get locale;
  @override
  @JsonKey(ignore: true)
  _$$ProgressImplCopyWith<_$ProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeModel? theme, Locale? locale, Object? error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = freezed,
    Object? locale = freezed,
    Object? error = freezed,
  }) {
    return _then(_$ErrorImpl(
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeModel?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({this.theme, this.locale, this.error});

  @override
  final ThemeModel? theme;
  @override
  final Locale? locale;
  @override
  final Object? error;

  @override
  String toString() {
    return 'SettingsState.error(theme: $theme, locale: $locale, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, theme, locale, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeModel? theme, Locale? locale) idle,
    required TResult Function(ThemeModel? theme, Locale? locale) success,
    required TResult Function(ThemeModel? theme, Locale? locale) progress,
    required TResult Function(ThemeModel? theme, Locale? locale, Object? error)
        error,
  }) {
    return error(theme, locale, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeModel? theme, Locale? locale)? idle,
    TResult? Function(ThemeModel? theme, Locale? locale)? success,
    TResult? Function(ThemeModel? theme, Locale? locale)? progress,
    TResult? Function(ThemeModel? theme, Locale? locale, Object? error)? error,
  }) {
    return error?.call(theme, locale, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeModel? theme, Locale? locale)? idle,
    TResult Function(ThemeModel? theme, Locale? locale)? success,
    TResult Function(ThemeModel? theme, Locale? locale)? progress,
    TResult Function(ThemeModel? theme, Locale? locale, Object? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(theme, locale, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Success value) success,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Success value)? success,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Success value)? success,
    TResult Function(_Progress value)? progress,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SettingsState {
  const factory _Error(
      {final ThemeModel? theme,
      final Locale? locale,
      final Object? error}) = _$ErrorImpl;

  @override
  ThemeModel? get theme;
  @override
  Locale? get locale;
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
