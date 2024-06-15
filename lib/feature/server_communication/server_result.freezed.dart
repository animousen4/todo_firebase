// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServerResult<E> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(E entity) success,
    required TResult Function(ServerError error) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(E entity)? success,
    TResult? Function(ServerError error)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(E entity)? success,
    TResult Function(ServerError error)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccessServerResult<E> value) success,
    required TResult Function(_FailedServerResult<E> value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuccessServerResult<E> value)? success,
    TResult? Function(_FailedServerResult<E> value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccessServerResult<E> value)? success,
    TResult Function(_FailedServerResult<E> value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerResultCopyWith<E, $Res> {
  factory $ServerResultCopyWith(
          ServerResult<E> value, $Res Function(ServerResult<E>) then) =
      _$ServerResultCopyWithImpl<E, $Res, ServerResult<E>>;
}

/// @nodoc
class _$ServerResultCopyWithImpl<E, $Res, $Val extends ServerResult<E>>
    implements $ServerResultCopyWith<E, $Res> {
  _$ServerResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessServerResultImplCopyWith<E, $Res> {
  factory _$$SuccessServerResultImplCopyWith(_$SuccessServerResultImpl<E> value,
          $Res Function(_$SuccessServerResultImpl<E>) then) =
      __$$SuccessServerResultImplCopyWithImpl<E, $Res>;
  @useResult
  $Res call({E entity});
}

/// @nodoc
class __$$SuccessServerResultImplCopyWithImpl<E, $Res>
    extends _$ServerResultCopyWithImpl<E, $Res, _$SuccessServerResultImpl<E>>
    implements _$$SuccessServerResultImplCopyWith<E, $Res> {
  __$$SuccessServerResultImplCopyWithImpl(_$SuccessServerResultImpl<E> _value,
      $Res Function(_$SuccessServerResultImpl<E>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = freezed,
  }) {
    return _then(_$SuccessServerResultImpl<E>(
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as E,
    ));
  }
}

/// @nodoc

class _$SuccessServerResultImpl<E> implements _SuccessServerResult<E> {
  const _$SuccessServerResultImpl({required this.entity});

  @override
  final E entity;

  @override
  String toString() {
    return 'ServerResult<$E>.success(entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessServerResultImpl<E> &&
            const DeepCollectionEquality().equals(other.entity, entity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(entity));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessServerResultImplCopyWith<E, _$SuccessServerResultImpl<E>>
      get copyWith => __$$SuccessServerResultImplCopyWithImpl<E,
          _$SuccessServerResultImpl<E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(E entity) success,
    required TResult Function(ServerError error) failed,
  }) {
    return success(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(E entity)? success,
    TResult? Function(ServerError error)? failed,
  }) {
    return success?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(E entity)? success,
    TResult Function(ServerError error)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccessServerResult<E> value) success,
    required TResult Function(_FailedServerResult<E> value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuccessServerResult<E> value)? success,
    TResult? Function(_FailedServerResult<E> value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccessServerResult<E> value)? success,
    TResult Function(_FailedServerResult<E> value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessServerResult<E> implements ServerResult<E> {
  const factory _SuccessServerResult({required final E entity}) =
      _$SuccessServerResultImpl<E>;

  E get entity;
  @JsonKey(ignore: true)
  _$$SuccessServerResultImplCopyWith<E, _$SuccessServerResultImpl<E>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedServerResultImplCopyWith<E, $Res> {
  factory _$$FailedServerResultImplCopyWith(_$FailedServerResultImpl<E> value,
          $Res Function(_$FailedServerResultImpl<E>) then) =
      __$$FailedServerResultImplCopyWithImpl<E, $Res>;
  @useResult
  $Res call({ServerError error});
}

/// @nodoc
class __$$FailedServerResultImplCopyWithImpl<E, $Res>
    extends _$ServerResultCopyWithImpl<E, $Res, _$FailedServerResultImpl<E>>
    implements _$$FailedServerResultImplCopyWith<E, $Res> {
  __$$FailedServerResultImplCopyWithImpl(_$FailedServerResultImpl<E> _value,
      $Res Function(_$FailedServerResultImpl<E>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailedServerResultImpl<E>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ServerError,
    ));
  }
}

/// @nodoc

class _$FailedServerResultImpl<E> implements _FailedServerResult<E> {
  const _$FailedServerResultImpl({required this.error});

  @override
  final ServerError error;

  @override
  String toString() {
    return 'ServerResult<$E>.failed(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedServerResultImpl<E> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedServerResultImplCopyWith<E, _$FailedServerResultImpl<E>>
      get copyWith => __$$FailedServerResultImplCopyWithImpl<E,
          _$FailedServerResultImpl<E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(E entity) success,
    required TResult Function(ServerError error) failed,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(E entity)? success,
    TResult? Function(ServerError error)? failed,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(E entity)? success,
    TResult Function(ServerError error)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccessServerResult<E> value) success,
    required TResult Function(_FailedServerResult<E> value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuccessServerResult<E> value)? success,
    TResult? Function(_FailedServerResult<E> value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccessServerResult<E> value)? success,
    TResult Function(_FailedServerResult<E> value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _FailedServerResult<E> implements ServerResult<E> {
  const factory _FailedServerResult({required final ServerError error}) =
      _$FailedServerResultImpl<E>;

  ServerError get error;
  @JsonKey(ignore: true)
  _$$FailedServerResultImplCopyWith<E, _$FailedServerResultImpl<E>>
      get copyWith => throw _privateConstructorUsedError;
}
