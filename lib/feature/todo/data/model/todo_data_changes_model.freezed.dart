// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_data_changes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoDataChangesModel {
  TodoItem get todoItem => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TodoItem todoItem, int newIndex) added,
    required TResult Function(TodoItem todoItem, int newIndex, int oldIndex)
        modified,
    required TResult Function(TodoItem todoItem, int oldIndex) removed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TodoItem todoItem, int newIndex)? added,
    TResult? Function(TodoItem todoItem, int newIndex, int oldIndex)? modified,
    TResult? Function(TodoItem todoItem, int oldIndex)? removed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodoItem todoItem, int newIndex)? added,
    TResult Function(TodoItem todoItem, int newIndex, int oldIndex)? modified,
    TResult Function(TodoItem todoItem, int oldIndex)? removed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Added value) added,
    required TResult Function(_Modified value) modified,
    required TResult Function(_Removed value) removed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Added value)? added,
    TResult? Function(_Modified value)? modified,
    TResult? Function(_Removed value)? removed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Added value)? added,
    TResult Function(_Modified value)? modified,
    TResult Function(_Removed value)? removed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoDataChangesModelCopyWith<TodoDataChangesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoDataChangesModelCopyWith<$Res> {
  factory $TodoDataChangesModelCopyWith(TodoDataChangesModel value,
          $Res Function(TodoDataChangesModel) then) =
      _$TodoDataChangesModelCopyWithImpl<$Res, TodoDataChangesModel>;
  @useResult
  $Res call({TodoItem todoItem});
}

/// @nodoc
class _$TodoDataChangesModelCopyWithImpl<$Res,
        $Val extends TodoDataChangesModel>
    implements $TodoDataChangesModelCopyWith<$Res> {
  _$TodoDataChangesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoItem = null,
  }) {
    return _then(_value.copyWith(
      todoItem: null == todoItem
          ? _value.todoItem
          : todoItem // ignore: cast_nullable_to_non_nullable
              as TodoItem,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddedImplCopyWith<$Res>
    implements $TodoDataChangesModelCopyWith<$Res> {
  factory _$$AddedImplCopyWith(
          _$AddedImpl value, $Res Function(_$AddedImpl) then) =
      __$$AddedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TodoItem todoItem, int newIndex});
}

/// @nodoc
class __$$AddedImplCopyWithImpl<$Res>
    extends _$TodoDataChangesModelCopyWithImpl<$Res, _$AddedImpl>
    implements _$$AddedImplCopyWith<$Res> {
  __$$AddedImplCopyWithImpl(
      _$AddedImpl _value, $Res Function(_$AddedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoItem = null,
    Object? newIndex = null,
  }) {
    return _then(_$AddedImpl(
      todoItem: null == todoItem
          ? _value.todoItem
          : todoItem // ignore: cast_nullable_to_non_nullable
              as TodoItem,
      newIndex: null == newIndex
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddedImpl implements _Added {
  const _$AddedImpl({required this.todoItem, required this.newIndex});

  @override
  final TodoItem todoItem;
  @override
  final int newIndex;

  @override
  String toString() {
    return 'TodoDataChangesModel.added(todoItem: $todoItem, newIndex: $newIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddedImpl &&
            (identical(other.todoItem, todoItem) ||
                other.todoItem == todoItem) &&
            (identical(other.newIndex, newIndex) ||
                other.newIndex == newIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todoItem, newIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddedImplCopyWith<_$AddedImpl> get copyWith =>
      __$$AddedImplCopyWithImpl<_$AddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TodoItem todoItem, int newIndex) added,
    required TResult Function(TodoItem todoItem, int newIndex, int oldIndex)
        modified,
    required TResult Function(TodoItem todoItem, int oldIndex) removed,
  }) {
    return added(todoItem, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TodoItem todoItem, int newIndex)? added,
    TResult? Function(TodoItem todoItem, int newIndex, int oldIndex)? modified,
    TResult? Function(TodoItem todoItem, int oldIndex)? removed,
  }) {
    return added?.call(todoItem, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodoItem todoItem, int newIndex)? added,
    TResult Function(TodoItem todoItem, int newIndex, int oldIndex)? modified,
    TResult Function(TodoItem todoItem, int oldIndex)? removed,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(todoItem, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Added value) added,
    required TResult Function(_Modified value) modified,
    required TResult Function(_Removed value) removed,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Added value)? added,
    TResult? Function(_Modified value)? modified,
    TResult? Function(_Removed value)? removed,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Added value)? added,
    TResult Function(_Modified value)? modified,
    TResult Function(_Removed value)? removed,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class _Added implements TodoDataChangesModel {
  const factory _Added(
      {required final TodoItem todoItem,
      required final int newIndex}) = _$AddedImpl;

  @override
  TodoItem get todoItem;
  int get newIndex;
  @override
  @JsonKey(ignore: true)
  _$$AddedImplCopyWith<_$AddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ModifiedImplCopyWith<$Res>
    implements $TodoDataChangesModelCopyWith<$Res> {
  factory _$$ModifiedImplCopyWith(
          _$ModifiedImpl value, $Res Function(_$ModifiedImpl) then) =
      __$$ModifiedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TodoItem todoItem, int newIndex, int oldIndex});
}

/// @nodoc
class __$$ModifiedImplCopyWithImpl<$Res>
    extends _$TodoDataChangesModelCopyWithImpl<$Res, _$ModifiedImpl>
    implements _$$ModifiedImplCopyWith<$Res> {
  __$$ModifiedImplCopyWithImpl(
      _$ModifiedImpl _value, $Res Function(_$ModifiedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoItem = null,
    Object? newIndex = null,
    Object? oldIndex = null,
  }) {
    return _then(_$ModifiedImpl(
      todoItem: null == todoItem
          ? _value.todoItem
          : todoItem // ignore: cast_nullable_to_non_nullable
              as TodoItem,
      newIndex: null == newIndex
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
      oldIndex: null == oldIndex
          ? _value.oldIndex
          : oldIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ModifiedImpl implements _Modified {
  const _$ModifiedImpl(
      {required this.todoItem, required this.newIndex, required this.oldIndex});

  @override
  final TodoItem todoItem;
  @override
  final int newIndex;
  @override
  final int oldIndex;

  @override
  String toString() {
    return 'TodoDataChangesModel.modified(todoItem: $todoItem, newIndex: $newIndex, oldIndex: $oldIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModifiedImpl &&
            (identical(other.todoItem, todoItem) ||
                other.todoItem == todoItem) &&
            (identical(other.newIndex, newIndex) ||
                other.newIndex == newIndex) &&
            (identical(other.oldIndex, oldIndex) ||
                other.oldIndex == oldIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todoItem, newIndex, oldIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModifiedImplCopyWith<_$ModifiedImpl> get copyWith =>
      __$$ModifiedImplCopyWithImpl<_$ModifiedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TodoItem todoItem, int newIndex) added,
    required TResult Function(TodoItem todoItem, int newIndex, int oldIndex)
        modified,
    required TResult Function(TodoItem todoItem, int oldIndex) removed,
  }) {
    return modified(todoItem, newIndex, oldIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TodoItem todoItem, int newIndex)? added,
    TResult? Function(TodoItem todoItem, int newIndex, int oldIndex)? modified,
    TResult? Function(TodoItem todoItem, int oldIndex)? removed,
  }) {
    return modified?.call(todoItem, newIndex, oldIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodoItem todoItem, int newIndex)? added,
    TResult Function(TodoItem todoItem, int newIndex, int oldIndex)? modified,
    TResult Function(TodoItem todoItem, int oldIndex)? removed,
    required TResult orElse(),
  }) {
    if (modified != null) {
      return modified(todoItem, newIndex, oldIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Added value) added,
    required TResult Function(_Modified value) modified,
    required TResult Function(_Removed value) removed,
  }) {
    return modified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Added value)? added,
    TResult? Function(_Modified value)? modified,
    TResult? Function(_Removed value)? removed,
  }) {
    return modified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Added value)? added,
    TResult Function(_Modified value)? modified,
    TResult Function(_Removed value)? removed,
    required TResult orElse(),
  }) {
    if (modified != null) {
      return modified(this);
    }
    return orElse();
  }
}

abstract class _Modified implements TodoDataChangesModel {
  const factory _Modified(
      {required final TodoItem todoItem,
      required final int newIndex,
      required final int oldIndex}) = _$ModifiedImpl;

  @override
  TodoItem get todoItem;
  int get newIndex;
  int get oldIndex;
  @override
  @JsonKey(ignore: true)
  _$$ModifiedImplCopyWith<_$ModifiedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemovedImplCopyWith<$Res>
    implements $TodoDataChangesModelCopyWith<$Res> {
  factory _$$RemovedImplCopyWith(
          _$RemovedImpl value, $Res Function(_$RemovedImpl) then) =
      __$$RemovedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TodoItem todoItem, int oldIndex});
}

/// @nodoc
class __$$RemovedImplCopyWithImpl<$Res>
    extends _$TodoDataChangesModelCopyWithImpl<$Res, _$RemovedImpl>
    implements _$$RemovedImplCopyWith<$Res> {
  __$$RemovedImplCopyWithImpl(
      _$RemovedImpl _value, $Res Function(_$RemovedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoItem = null,
    Object? oldIndex = null,
  }) {
    return _then(_$RemovedImpl(
      todoItem: null == todoItem
          ? _value.todoItem
          : todoItem // ignore: cast_nullable_to_non_nullable
              as TodoItem,
      oldIndex: null == oldIndex
          ? _value.oldIndex
          : oldIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemovedImpl implements _Removed {
  const _$RemovedImpl({required this.todoItem, required this.oldIndex});

  @override
  final TodoItem todoItem;
  @override
  final int oldIndex;

  @override
  String toString() {
    return 'TodoDataChangesModel.removed(todoItem: $todoItem, oldIndex: $oldIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemovedImpl &&
            (identical(other.todoItem, todoItem) ||
                other.todoItem == todoItem) &&
            (identical(other.oldIndex, oldIndex) ||
                other.oldIndex == oldIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todoItem, oldIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemovedImplCopyWith<_$RemovedImpl> get copyWith =>
      __$$RemovedImplCopyWithImpl<_$RemovedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TodoItem todoItem, int newIndex) added,
    required TResult Function(TodoItem todoItem, int newIndex, int oldIndex)
        modified,
    required TResult Function(TodoItem todoItem, int oldIndex) removed,
  }) {
    return removed(todoItem, oldIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TodoItem todoItem, int newIndex)? added,
    TResult? Function(TodoItem todoItem, int newIndex, int oldIndex)? modified,
    TResult? Function(TodoItem todoItem, int oldIndex)? removed,
  }) {
    return removed?.call(todoItem, oldIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodoItem todoItem, int newIndex)? added,
    TResult Function(TodoItem todoItem, int newIndex, int oldIndex)? modified,
    TResult Function(TodoItem todoItem, int oldIndex)? removed,
    required TResult orElse(),
  }) {
    if (removed != null) {
      return removed(todoItem, oldIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Added value) added,
    required TResult Function(_Modified value) modified,
    required TResult Function(_Removed value) removed,
  }) {
    return removed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Added value)? added,
    TResult? Function(_Modified value)? modified,
    TResult? Function(_Removed value)? removed,
  }) {
    return removed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Added value)? added,
    TResult Function(_Modified value)? modified,
    TResult Function(_Removed value)? removed,
    required TResult orElse(),
  }) {
    if (removed != null) {
      return removed(this);
    }
    return orElse();
  }
}

abstract class _Removed implements TodoDataChangesModel {
  const factory _Removed(
      {required final TodoItem todoItem,
      required final int oldIndex}) = _$RemovedImpl;

  @override
  TodoItem get todoItem;
  int get oldIndex;
  @override
  @JsonKey(ignore: true)
  _$$RemovedImplCopyWith<_$RemovedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
