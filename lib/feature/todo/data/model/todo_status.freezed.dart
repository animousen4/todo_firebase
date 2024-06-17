// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() planned,
    required TResult Function() completed,
    required TResult Function() deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? planned,
    TResult? Function()? completed,
    TResult? Function()? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? planned,
    TResult Function()? completed,
    TResult Function()? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlannedTodoStatus value) planned,
    required TResult Function(CompletedTodoStatus value) completed,
    required TResult Function(DeletedTodoStatus value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlannedTodoStatus value)? planned,
    TResult? Function(CompletedTodoStatus value)? completed,
    TResult? Function(DeletedTodoStatus value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlannedTodoStatus value)? planned,
    TResult Function(CompletedTodoStatus value)? completed,
    TResult Function(DeletedTodoStatus value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStatusCopyWith<$Res> {
  factory $TodoStatusCopyWith(
          TodoStatus value, $Res Function(TodoStatus) then) =
      _$TodoStatusCopyWithImpl<$Res, TodoStatus>;
}

/// @nodoc
class _$TodoStatusCopyWithImpl<$Res, $Val extends TodoStatus>
    implements $TodoStatusCopyWith<$Res> {
  _$TodoStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PlannedTodoStatusImplCopyWith<$Res> {
  factory _$$PlannedTodoStatusImplCopyWith(_$PlannedTodoStatusImpl value,
          $Res Function(_$PlannedTodoStatusImpl) then) =
      __$$PlannedTodoStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlannedTodoStatusImplCopyWithImpl<$Res>
    extends _$TodoStatusCopyWithImpl<$Res, _$PlannedTodoStatusImpl>
    implements _$$PlannedTodoStatusImplCopyWith<$Res> {
  __$$PlannedTodoStatusImplCopyWithImpl(_$PlannedTodoStatusImpl _value,
      $Res Function(_$PlannedTodoStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlannedTodoStatusImpl implements PlannedTodoStatus {
  const _$PlannedTodoStatusImpl();

  @override
  String toString() {
    return 'TodoStatus.planned()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlannedTodoStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() planned,
    required TResult Function() completed,
    required TResult Function() deleted,
  }) {
    return planned();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? planned,
    TResult? Function()? completed,
    TResult? Function()? deleted,
  }) {
    return planned?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? planned,
    TResult Function()? completed,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (planned != null) {
      return planned();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlannedTodoStatus value) planned,
    required TResult Function(CompletedTodoStatus value) completed,
    required TResult Function(DeletedTodoStatus value) deleted,
  }) {
    return planned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlannedTodoStatus value)? planned,
    TResult? Function(CompletedTodoStatus value)? completed,
    TResult? Function(DeletedTodoStatus value)? deleted,
  }) {
    return planned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlannedTodoStatus value)? planned,
    TResult Function(CompletedTodoStatus value)? completed,
    TResult Function(DeletedTodoStatus value)? deleted,
    required TResult orElse(),
  }) {
    if (planned != null) {
      return planned(this);
    }
    return orElse();
  }
}

abstract class PlannedTodoStatus implements TodoStatus {
  const factory PlannedTodoStatus() = _$PlannedTodoStatusImpl;
}

/// @nodoc
abstract class _$$CompletedTodoStatusImplCopyWith<$Res> {
  factory _$$CompletedTodoStatusImplCopyWith(_$CompletedTodoStatusImpl value,
          $Res Function(_$CompletedTodoStatusImpl) then) =
      __$$CompletedTodoStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompletedTodoStatusImplCopyWithImpl<$Res>
    extends _$TodoStatusCopyWithImpl<$Res, _$CompletedTodoStatusImpl>
    implements _$$CompletedTodoStatusImplCopyWith<$Res> {
  __$$CompletedTodoStatusImplCopyWithImpl(_$CompletedTodoStatusImpl _value,
      $Res Function(_$CompletedTodoStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CompletedTodoStatusImpl implements CompletedTodoStatus {
  const _$CompletedTodoStatusImpl();

  @override
  String toString() {
    return 'TodoStatus.completed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedTodoStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() planned,
    required TResult Function() completed,
    required TResult Function() deleted,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? planned,
    TResult? Function()? completed,
    TResult? Function()? deleted,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? planned,
    TResult Function()? completed,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlannedTodoStatus value) planned,
    required TResult Function(CompletedTodoStatus value) completed,
    required TResult Function(DeletedTodoStatus value) deleted,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlannedTodoStatus value)? planned,
    TResult? Function(CompletedTodoStatus value)? completed,
    TResult? Function(DeletedTodoStatus value)? deleted,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlannedTodoStatus value)? planned,
    TResult Function(CompletedTodoStatus value)? completed,
    TResult Function(DeletedTodoStatus value)? deleted,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class CompletedTodoStatus implements TodoStatus {
  const factory CompletedTodoStatus() = _$CompletedTodoStatusImpl;
}

/// @nodoc
abstract class _$$DeletedTodoStatusImplCopyWith<$Res> {
  factory _$$DeletedTodoStatusImplCopyWith(_$DeletedTodoStatusImpl value,
          $Res Function(_$DeletedTodoStatusImpl) then) =
      __$$DeletedTodoStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeletedTodoStatusImplCopyWithImpl<$Res>
    extends _$TodoStatusCopyWithImpl<$Res, _$DeletedTodoStatusImpl>
    implements _$$DeletedTodoStatusImplCopyWith<$Res> {
  __$$DeletedTodoStatusImplCopyWithImpl(_$DeletedTodoStatusImpl _value,
      $Res Function(_$DeletedTodoStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeletedTodoStatusImpl implements DeletedTodoStatus {
  const _$DeletedTodoStatusImpl();

  @override
  String toString() {
    return 'TodoStatus.deleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeletedTodoStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() planned,
    required TResult Function() completed,
    required TResult Function() deleted,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? planned,
    TResult? Function()? completed,
    TResult? Function()? deleted,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? planned,
    TResult Function()? completed,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlannedTodoStatus value) planned,
    required TResult Function(CompletedTodoStatus value) completed,
    required TResult Function(DeletedTodoStatus value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlannedTodoStatus value)? planned,
    TResult? Function(CompletedTodoStatus value)? completed,
    TResult? Function(DeletedTodoStatus value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlannedTodoStatus value)? planned,
    TResult Function(CompletedTodoStatus value)? completed,
    TResult Function(DeletedTodoStatus value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class DeletedTodoStatus implements TodoStatus {
  const factory DeletedTodoStatus() = _$DeletedTodoStatusImpl;
}
