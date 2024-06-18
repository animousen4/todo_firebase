// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTodos,
    required TResult Function(TodoDataSnapshotModel snapshot) todoDataChanged,
    required TResult Function(TodoModel todoModel) addTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTodos,
    TResult? Function(TodoDataSnapshotModel snapshot)? todoDataChanged,
    TResult? Function(TodoModel todoModel)? addTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTodos,
    TResult Function(TodoDataSnapshotModel snapshot)? todoDataChanged,
    TResult Function(TodoModel todoModel)? addTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTodos value) loadTodos,
    required TResult Function(_TodoDataChanged value) todoDataChanged,
    required TResult Function(_AddTodo value) addTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTodos value)? loadTodos,
    TResult? Function(_TodoDataChanged value)? todoDataChanged,
    TResult? Function(_AddTodo value)? addTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTodos value)? loadTodos,
    TResult Function(_TodoDataChanged value)? todoDataChanged,
    TResult Function(_AddTodo value)? addTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res, TodoEvent>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res, $Val extends TodoEvent>
    implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadTodosImplCopyWith<$Res> {
  factory _$$LoadTodosImplCopyWith(
          _$LoadTodosImpl value, $Res Function(_$LoadTodosImpl) then) =
      __$$LoadTodosImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadTodosImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$LoadTodosImpl>
    implements _$$LoadTodosImplCopyWith<$Res> {
  __$$LoadTodosImplCopyWithImpl(
      _$LoadTodosImpl _value, $Res Function(_$LoadTodosImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadTodosImpl implements _LoadTodos {
  const _$LoadTodosImpl();

  @override
  String toString() {
    return 'TodoEvent.loadTodos()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadTodosImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTodos,
    required TResult Function(TodoDataSnapshotModel snapshot) todoDataChanged,
    required TResult Function(TodoModel todoModel) addTodo,
  }) {
    return loadTodos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTodos,
    TResult? Function(TodoDataSnapshotModel snapshot)? todoDataChanged,
    TResult? Function(TodoModel todoModel)? addTodo,
  }) {
    return loadTodos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTodos,
    TResult Function(TodoDataSnapshotModel snapshot)? todoDataChanged,
    TResult Function(TodoModel todoModel)? addTodo,
    required TResult orElse(),
  }) {
    if (loadTodos != null) {
      return loadTodos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTodos value) loadTodos,
    required TResult Function(_TodoDataChanged value) todoDataChanged,
    required TResult Function(_AddTodo value) addTodo,
  }) {
    return loadTodos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTodos value)? loadTodos,
    TResult? Function(_TodoDataChanged value)? todoDataChanged,
    TResult? Function(_AddTodo value)? addTodo,
  }) {
    return loadTodos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTodos value)? loadTodos,
    TResult Function(_TodoDataChanged value)? todoDataChanged,
    TResult Function(_AddTodo value)? addTodo,
    required TResult orElse(),
  }) {
    if (loadTodos != null) {
      return loadTodos(this);
    }
    return orElse();
  }
}

abstract class _LoadTodos implements TodoEvent {
  const factory _LoadTodos() = _$LoadTodosImpl;
}

/// @nodoc
abstract class _$$TodoDataChangedImplCopyWith<$Res> {
  factory _$$TodoDataChangedImplCopyWith(_$TodoDataChangedImpl value,
          $Res Function(_$TodoDataChangedImpl) then) =
      __$$TodoDataChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TodoDataSnapshotModel snapshot});
}

/// @nodoc
class __$$TodoDataChangedImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TodoDataChangedImpl>
    implements _$$TodoDataChangedImplCopyWith<$Res> {
  __$$TodoDataChangedImplCopyWithImpl(
      _$TodoDataChangedImpl _value, $Res Function(_$TodoDataChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapshot = null,
  }) {
    return _then(_$TodoDataChangedImpl(
      snapshot: null == snapshot
          ? _value.snapshot
          : snapshot // ignore: cast_nullable_to_non_nullable
              as TodoDataSnapshotModel,
    ));
  }
}

/// @nodoc

class _$TodoDataChangedImpl implements _TodoDataChanged {
  const _$TodoDataChangedImpl({required this.snapshot});

  @override
  final TodoDataSnapshotModel snapshot;

  @override
  String toString() {
    return 'TodoEvent.todoDataChanged(snapshot: $snapshot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoDataChangedImpl &&
            (identical(other.snapshot, snapshot) ||
                other.snapshot == snapshot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, snapshot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoDataChangedImplCopyWith<_$TodoDataChangedImpl> get copyWith =>
      __$$TodoDataChangedImplCopyWithImpl<_$TodoDataChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTodos,
    required TResult Function(TodoDataSnapshotModel snapshot) todoDataChanged,
    required TResult Function(TodoModel todoModel) addTodo,
  }) {
    return todoDataChanged(snapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTodos,
    TResult? Function(TodoDataSnapshotModel snapshot)? todoDataChanged,
    TResult? Function(TodoModel todoModel)? addTodo,
  }) {
    return todoDataChanged?.call(snapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTodos,
    TResult Function(TodoDataSnapshotModel snapshot)? todoDataChanged,
    TResult Function(TodoModel todoModel)? addTodo,
    required TResult orElse(),
  }) {
    if (todoDataChanged != null) {
      return todoDataChanged(snapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTodos value) loadTodos,
    required TResult Function(_TodoDataChanged value) todoDataChanged,
    required TResult Function(_AddTodo value) addTodo,
  }) {
    return todoDataChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTodos value)? loadTodos,
    TResult? Function(_TodoDataChanged value)? todoDataChanged,
    TResult? Function(_AddTodo value)? addTodo,
  }) {
    return todoDataChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTodos value)? loadTodos,
    TResult Function(_TodoDataChanged value)? todoDataChanged,
    TResult Function(_AddTodo value)? addTodo,
    required TResult orElse(),
  }) {
    if (todoDataChanged != null) {
      return todoDataChanged(this);
    }
    return orElse();
  }
}

abstract class _TodoDataChanged implements TodoEvent {
  const factory _TodoDataChanged(
      {required final TodoDataSnapshotModel snapshot}) = _$TodoDataChangedImpl;

  TodoDataSnapshotModel get snapshot;
  @JsonKey(ignore: true)
  _$$TodoDataChangedImplCopyWith<_$TodoDataChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTodoImplCopyWith<$Res> {
  factory _$$AddTodoImplCopyWith(
          _$AddTodoImpl value, $Res Function(_$AddTodoImpl) then) =
      __$$AddTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TodoModel todoModel});
}

/// @nodoc
class __$$AddTodoImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$AddTodoImpl>
    implements _$$AddTodoImplCopyWith<$Res> {
  __$$AddTodoImplCopyWithImpl(
      _$AddTodoImpl _value, $Res Function(_$AddTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoModel = null,
  }) {
    return _then(_$AddTodoImpl(
      todoModel: null == todoModel
          ? _value.todoModel
          : todoModel // ignore: cast_nullable_to_non_nullable
              as TodoModel,
    ));
  }
}

/// @nodoc

class _$AddTodoImpl implements _AddTodo {
  const _$AddTodoImpl({required this.todoModel});

  @override
  final TodoModel todoModel;

  @override
  String toString() {
    return 'TodoEvent.addTodo(todoModel: $todoModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTodoImpl &&
            (identical(other.todoModel, todoModel) ||
                other.todoModel == todoModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todoModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTodoImplCopyWith<_$AddTodoImpl> get copyWith =>
      __$$AddTodoImplCopyWithImpl<_$AddTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTodos,
    required TResult Function(TodoDataSnapshotModel snapshot) todoDataChanged,
    required TResult Function(TodoModel todoModel) addTodo,
  }) {
    return addTodo(todoModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTodos,
    TResult? Function(TodoDataSnapshotModel snapshot)? todoDataChanged,
    TResult? Function(TodoModel todoModel)? addTodo,
  }) {
    return addTodo?.call(todoModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTodos,
    TResult Function(TodoDataSnapshotModel snapshot)? todoDataChanged,
    TResult Function(TodoModel todoModel)? addTodo,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(todoModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTodos value) loadTodos,
    required TResult Function(_TodoDataChanged value) todoDataChanged,
    required TResult Function(_AddTodo value) addTodo,
  }) {
    return addTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTodos value)? loadTodos,
    TResult? Function(_TodoDataChanged value)? todoDataChanged,
    TResult? Function(_AddTodo value)? addTodo,
  }) {
    return addTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTodos value)? loadTodos,
    TResult Function(_TodoDataChanged value)? todoDataChanged,
    TResult Function(_AddTodo value)? addTodo,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(this);
    }
    return orElse();
  }
}

abstract class _AddTodo implements TodoEvent {
  const factory _AddTodo({required final TodoModel todoModel}) = _$AddTodoImpl;

  TodoModel get todoModel;
  @JsonKey(ignore: true)
  _$$AddTodoImplCopyWith<_$AddTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodoState {
  List<TodoModel> get todoModels => throw _privateConstructorUsedError;
  TodoDataSnapshotModel? get snapshot => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)
        idle,
    required TResult Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)
        progress,
    required TResult Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)?
        idle,
    TResult? Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)?
        progress,
    TResult? Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)?
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)?
        idle,
    TResult Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)?
        progress,
    TResult Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)?
        failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Progress value)? progress,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoStateCopyWith<TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
  @useResult
  $Res call({List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot});
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoModels = null,
    Object? snapshot = freezed,
  }) {
    return _then(_value.copyWith(
      todoModels: null == todoModels
          ? _value.todoModels
          : todoModels // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
      snapshot: freezed == snapshot
          ? _value.snapshot
          : snapshot // ignore: cast_nullable_to_non_nullable
              as TodoDataSnapshotModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdleImplCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory _$$IdleImplCopyWith(
          _$IdleImpl value, $Res Function(_$IdleImpl) then) =
      __$$IdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot});
}

/// @nodoc
class __$$IdleImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$IdleImpl>
    implements _$$IdleImplCopyWith<$Res> {
  __$$IdleImplCopyWithImpl(_$IdleImpl _value, $Res Function(_$IdleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoModels = null,
    Object? snapshot = freezed,
  }) {
    return _then(_$IdleImpl(
      todoModels: null == todoModels
          ? _value._todoModels
          : todoModels // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
      snapshot: freezed == snapshot
          ? _value.snapshot
          : snapshot // ignore: cast_nullable_to_non_nullable
              as TodoDataSnapshotModel?,
    ));
  }
}

/// @nodoc

class _$IdleImpl implements _Idle {
  const _$IdleImpl({required final List<TodoModel> todoModels, this.snapshot})
      : _todoModels = todoModels;

  final List<TodoModel> _todoModels;
  @override
  List<TodoModel> get todoModels {
    if (_todoModels is EqualUnmodifiableListView) return _todoModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todoModels);
  }

  @override
  final TodoDataSnapshotModel? snapshot;

  @override
  String toString() {
    return 'TodoState.idle(todoModels: $todoModels, snapshot: $snapshot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleImpl &&
            const DeepCollectionEquality()
                .equals(other._todoModels, _todoModels) &&
            (identical(other.snapshot, snapshot) ||
                other.snapshot == snapshot));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_todoModels), snapshot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdleImplCopyWith<_$IdleImpl> get copyWith =>
      __$$IdleImplCopyWithImpl<_$IdleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)
        idle,
    required TResult Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)
        progress,
    required TResult Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)
        failed,
  }) {
    return idle(todoModels, snapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)?
        idle,
    TResult? Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)?
        progress,
    TResult? Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)?
        failed,
  }) {
    return idle?.call(todoModels, snapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)?
        idle,
    TResult Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)?
        progress,
    TResult Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)?
        failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(todoModels, snapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Failed value) failed,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Failed value)? failed,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Progress value)? progress,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements TodoState {
  const factory _Idle(
      {required final List<TodoModel> todoModels,
      final TodoDataSnapshotModel? snapshot}) = _$IdleImpl;

  @override
  List<TodoModel> get todoModels;
  @override
  TodoDataSnapshotModel? get snapshot;
  @override
  @JsonKey(ignore: true)
  _$$IdleImplCopyWith<_$IdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgressImplCopyWith<$Res>
    implements $TodoStateCopyWith<$Res> {
  factory _$$ProgressImplCopyWith(
          _$ProgressImpl value, $Res Function(_$ProgressImpl) then) =
      __$$ProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot});
}

/// @nodoc
class __$$ProgressImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$ProgressImpl>
    implements _$$ProgressImplCopyWith<$Res> {
  __$$ProgressImplCopyWithImpl(
      _$ProgressImpl _value, $Res Function(_$ProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoModels = null,
    Object? snapshot = freezed,
  }) {
    return _then(_$ProgressImpl(
      todoModels: null == todoModels
          ? _value._todoModels
          : todoModels // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
      snapshot: freezed == snapshot
          ? _value.snapshot
          : snapshot // ignore: cast_nullable_to_non_nullable
              as TodoDataSnapshotModel?,
    ));
  }
}

/// @nodoc

class _$ProgressImpl implements _Progress {
  const _$ProgressImpl(
      {required final List<TodoModel> todoModels, this.snapshot})
      : _todoModels = todoModels;

  final List<TodoModel> _todoModels;
  @override
  List<TodoModel> get todoModels {
    if (_todoModels is EqualUnmodifiableListView) return _todoModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todoModels);
  }

  @override
  final TodoDataSnapshotModel? snapshot;

  @override
  String toString() {
    return 'TodoState.progress(todoModels: $todoModels, snapshot: $snapshot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressImpl &&
            const DeepCollectionEquality()
                .equals(other._todoModels, _todoModels) &&
            (identical(other.snapshot, snapshot) ||
                other.snapshot == snapshot));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_todoModels), snapshot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressImplCopyWith<_$ProgressImpl> get copyWith =>
      __$$ProgressImplCopyWithImpl<_$ProgressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)
        idle,
    required TResult Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)
        progress,
    required TResult Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)
        failed,
  }) {
    return progress(todoModels, snapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)?
        idle,
    TResult? Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)?
        progress,
    TResult? Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)?
        failed,
  }) {
    return progress?.call(todoModels, snapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)?
        idle,
    TResult Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)?
        progress,
    TResult Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)?
        failed,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(todoModels, snapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Failed value) failed,
  }) {
    return progress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Failed value)? failed,
  }) {
    return progress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Progress value)? progress,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(this);
    }
    return orElse();
  }
}

abstract class _Progress implements TodoState {
  const factory _Progress(
      {required final List<TodoModel> todoModels,
      final TodoDataSnapshotModel? snapshot}) = _$ProgressImpl;

  @override
  List<TodoModel> get todoModels;
  @override
  TodoDataSnapshotModel? get snapshot;
  @override
  @JsonKey(ignore: true)
  _$$ProgressImplCopyWith<_$ProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoModels = null,
    Object? snapshot = freezed,
  }) {
    return _then(_$FailedImpl(
      todoModels: null == todoModels
          ? _value._todoModels
          : todoModels // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
      snapshot: freezed == snapshot
          ? _value.snapshot
          : snapshot // ignore: cast_nullable_to_non_nullable
              as TodoDataSnapshotModel?,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl({required final List<TodoModel> todoModels, this.snapshot})
      : _todoModels = todoModels;

  final List<TodoModel> _todoModels;
  @override
  List<TodoModel> get todoModels {
    if (_todoModels is EqualUnmodifiableListView) return _todoModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todoModels);
  }

  @override
  final TodoDataSnapshotModel? snapshot;

  @override
  String toString() {
    return 'TodoState.failed(todoModels: $todoModels, snapshot: $snapshot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            const DeepCollectionEquality()
                .equals(other._todoModels, _todoModels) &&
            (identical(other.snapshot, snapshot) ||
                other.snapshot == snapshot));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_todoModels), snapshot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)
        idle,
    required TResult Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)
        progress,
    required TResult Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)
        failed,
  }) {
    return failed(todoModels, snapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)?
        idle,
    TResult? Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)?
        progress,
    TResult? Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)?
        failed,
  }) {
    return failed?.call(todoModels, snapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)?
        idle,
    TResult Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)?
        progress,
    TResult Function(
            List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot)?
        failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(todoModels, snapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Progress value)? progress,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements TodoState {
  const factory _Failed(
      {required final List<TodoModel> todoModels,
      final TodoDataSnapshotModel? snapshot}) = _$FailedImpl;

  @override
  List<TodoModel> get todoModels;
  @override
  TodoDataSnapshotModel? get snapshot;
  @override
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
