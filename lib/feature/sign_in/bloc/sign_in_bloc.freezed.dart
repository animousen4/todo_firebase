// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInEvent {
  DefaultAuthUserData get signInData => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DefaultAuthUserData signInData) defaultSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DefaultAuthUserData signInData)? defaultSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DefaultAuthUserData signInData)? defaultSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DefaultSignIn value) defaultSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DefaultSignIn value)? defaultSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DefaultSignIn value)? defaultSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInEventCopyWith<SignInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
  @useResult
  $Res call({DefaultAuthUserData signInData});
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInData = null,
  }) {
    return _then(_value.copyWith(
      signInData: null == signInData
          ? _value.signInData
          : signInData // ignore: cast_nullable_to_non_nullable
              as DefaultAuthUserData,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DefaultSignInImplCopyWith<$Res>
    implements $SignInEventCopyWith<$Res> {
  factory _$$DefaultSignInImplCopyWith(
          _$DefaultSignInImpl value, $Res Function(_$DefaultSignInImpl) then) =
      __$$DefaultSignInImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DefaultAuthUserData signInData});
}

/// @nodoc
class __$$DefaultSignInImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$DefaultSignInImpl>
    implements _$$DefaultSignInImplCopyWith<$Res> {
  __$$DefaultSignInImplCopyWithImpl(
      _$DefaultSignInImpl _value, $Res Function(_$DefaultSignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInData = null,
  }) {
    return _then(_$DefaultSignInImpl(
      signInData: null == signInData
          ? _value.signInData
          : signInData // ignore: cast_nullable_to_non_nullable
              as DefaultAuthUserData,
    ));
  }
}

/// @nodoc

class _$DefaultSignInImpl implements _DefaultSignIn {
  const _$DefaultSignInImpl({required this.signInData});

  @override
  final DefaultAuthUserData signInData;

  @override
  String toString() {
    return 'SignInEvent.defaultSignIn(signInData: $signInData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultSignInImpl &&
            (identical(other.signInData, signInData) ||
                other.signInData == signInData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signInData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultSignInImplCopyWith<_$DefaultSignInImpl> get copyWith =>
      __$$DefaultSignInImplCopyWithImpl<_$DefaultSignInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DefaultAuthUserData signInData) defaultSignIn,
  }) {
    return defaultSignIn(signInData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DefaultAuthUserData signInData)? defaultSignIn,
  }) {
    return defaultSignIn?.call(signInData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DefaultAuthUserData signInData)? defaultSignIn,
    required TResult orElse(),
  }) {
    if (defaultSignIn != null) {
      return defaultSignIn(signInData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DefaultSignIn value) defaultSignIn,
  }) {
    return defaultSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DefaultSignIn value)? defaultSignIn,
  }) {
    return defaultSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DefaultSignIn value)? defaultSignIn,
    required TResult orElse(),
  }) {
    if (defaultSignIn != null) {
      return defaultSignIn(this);
    }
    return orElse();
  }
}

abstract class _DefaultSignIn implements SignInEvent {
  const factory _DefaultSignIn(
      {required final DefaultAuthUserData signInData}) = _$DefaultSignInImpl;

  @override
  DefaultAuthUserData get signInData;
  @override
  @JsonKey(ignore: true)
  _$$DefaultSignInImplCopyWith<_$DefaultSignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInState {
  ServerError? get validationError => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ServerError? validationError) idle,
    required TResult Function(ServerError? validationError) processing,
    required TResult Function(ServerError? validationError) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ServerError? validationError)? idle,
    TResult? Function(ServerError? validationError)? processing,
    TResult? Function(ServerError? validationError)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServerError? validationError)? idle,
    TResult Function(ServerError? validationError)? processing,
    TResult Function(ServerError? validationError)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Processing value)? processing,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call({ServerError? validationError});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validationError = freezed,
  }) {
    return _then(_value.copyWith(
      validationError: freezed == validationError
          ? _value.validationError
          : validationError // ignore: cast_nullable_to_non_nullable
              as ServerError?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdleImplCopyWith<$Res> implements $SignInStateCopyWith<$Res> {
  factory _$$IdleImplCopyWith(
          _$IdleImpl value, $Res Function(_$IdleImpl) then) =
      __$$IdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ServerError? validationError});
}

/// @nodoc
class __$$IdleImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$IdleImpl>
    implements _$$IdleImplCopyWith<$Res> {
  __$$IdleImplCopyWithImpl(_$IdleImpl _value, $Res Function(_$IdleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validationError = freezed,
  }) {
    return _then(_$IdleImpl(
      validationError: freezed == validationError
          ? _value.validationError
          : validationError // ignore: cast_nullable_to_non_nullable
              as ServerError?,
    ));
  }
}

/// @nodoc

class _$IdleImpl implements _Idle {
  const _$IdleImpl({this.validationError});

  @override
  final ServerError? validationError;

  @override
  String toString() {
    return 'SignInState.idle(validationError: $validationError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleImpl &&
            (identical(other.validationError, validationError) ||
                other.validationError == validationError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, validationError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdleImplCopyWith<_$IdleImpl> get copyWith =>
      __$$IdleImplCopyWithImpl<_$IdleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ServerError? validationError) idle,
    required TResult Function(ServerError? validationError) processing,
    required TResult Function(ServerError? validationError) failed,
  }) {
    return idle(validationError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ServerError? validationError)? idle,
    TResult? Function(ServerError? validationError)? processing,
    TResult? Function(ServerError? validationError)? failed,
  }) {
    return idle?.call(validationError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServerError? validationError)? idle,
    TResult Function(ServerError? validationError)? processing,
    TResult Function(ServerError? validationError)? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(validationError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Failed value) failed,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Failed value)? failed,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Processing value)? processing,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements SignInState {
  const factory _Idle({final ServerError? validationError}) = _$IdleImpl;

  @override
  ServerError? get validationError;
  @override
  @JsonKey(ignore: true)
  _$$IdleImplCopyWith<_$IdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProcessingImplCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$ProcessingImplCopyWith(
          _$ProcessingImpl value, $Res Function(_$ProcessingImpl) then) =
      __$$ProcessingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ServerError? validationError});
}

/// @nodoc
class __$$ProcessingImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$ProcessingImpl>
    implements _$$ProcessingImplCopyWith<$Res> {
  __$$ProcessingImplCopyWithImpl(
      _$ProcessingImpl _value, $Res Function(_$ProcessingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validationError = freezed,
  }) {
    return _then(_$ProcessingImpl(
      validationError: freezed == validationError
          ? _value.validationError
          : validationError // ignore: cast_nullable_to_non_nullable
              as ServerError?,
    ));
  }
}

/// @nodoc

class _$ProcessingImpl implements _Processing {
  const _$ProcessingImpl({this.validationError});

  @override
  final ServerError? validationError;

  @override
  String toString() {
    return 'SignInState.processing(validationError: $validationError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessingImpl &&
            (identical(other.validationError, validationError) ||
                other.validationError == validationError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, validationError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessingImplCopyWith<_$ProcessingImpl> get copyWith =>
      __$$ProcessingImplCopyWithImpl<_$ProcessingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ServerError? validationError) idle,
    required TResult Function(ServerError? validationError) processing,
    required TResult Function(ServerError? validationError) failed,
  }) {
    return processing(validationError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ServerError? validationError)? idle,
    TResult? Function(ServerError? validationError)? processing,
    TResult? Function(ServerError? validationError)? failed,
  }) {
    return processing?.call(validationError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServerError? validationError)? idle,
    TResult Function(ServerError? validationError)? processing,
    TResult Function(ServerError? validationError)? failed,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(validationError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Failed value) failed,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Failed value)? failed,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Processing value)? processing,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _Processing implements SignInState {
  const factory _Processing({final ServerError? validationError}) =
      _$ProcessingImpl;

  @override
  ServerError? get validationError;
  @override
  @JsonKey(ignore: true)
  _$$ProcessingImplCopyWith<_$ProcessingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ServerError? validationError});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validationError = freezed,
  }) {
    return _then(_$FailedImpl(
      validationError: freezed == validationError
          ? _value.validationError
          : validationError // ignore: cast_nullable_to_non_nullable
              as ServerError?,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl({this.validationError});

  @override
  final ServerError? validationError;

  @override
  String toString() {
    return 'SignInState.failed(validationError: $validationError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.validationError, validationError) ||
                other.validationError == validationError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, validationError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ServerError? validationError) idle,
    required TResult Function(ServerError? validationError) processing,
    required TResult Function(ServerError? validationError) failed,
  }) {
    return failed(validationError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ServerError? validationError)? idle,
    TResult? Function(ServerError? validationError)? processing,
    TResult? Function(ServerError? validationError)? failed,
  }) {
    return failed?.call(validationError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServerError? validationError)? idle,
    TResult Function(ServerError? validationError)? processing,
    TResult Function(ServerError? validationError)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(validationError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Processing value)? processing,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements SignInState {
  const factory _Failed({final ServerError? validationError}) = _$FailedImpl;

  @override
  ServerError? get validationError;
  @override
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
