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
    required TResult Function(SortType? sortBy) loadTodos,
    required TResult Function(TodoDataSnapshotModel snapshot) todoDataChanged,
    required TResult Function(TodoModel todoModel) addTodo,
    required TResult Function(int index) removeTodo,
    required TResult Function(int index, TodoStatus status) markTodo,
    required TResult Function(SortType sortType) sortBy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SortType? sortBy)? loadTodos,
    TResult? Function(TodoDataSnapshotModel snapshot)? todoDataChanged,
    TResult? Function(TodoModel todoModel)? addTodo,
    TResult? Function(int index)? removeTodo,
    TResult? Function(int index, TodoStatus status)? markTodo,
    TResult? Function(SortType sortType)? sortBy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SortType? sortBy)? loadTodos,
    TResult Function(TodoDataSnapshotModel snapshot)? todoDataChanged,
    TResult Function(TodoModel todoModel)? addTodo,
    TResult Function(int index)? removeTodo,
    TResult Function(int index, TodoStatus status)? markTodo,
    TResult Function(SortType sortType)? sortBy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTodos value) loadTodos,
    required TResult Function(_TodoDataChanged value) todoDataChanged,
    required TResult Function(_AddTodo value) addTodo,
    required TResult Function(_RemoveTodo value) removeTodo,
    required TResult Function(_MarkToDo value) markTodo,
    required TResult Function(_SortBy value) sortBy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTodos value)? loadTodos,
    TResult? Function(_TodoDataChanged value)? todoDataChanged,
    TResult? Function(_AddTodo value)? addTodo,
    TResult? Function(_RemoveTodo value)? removeTodo,
    TResult? Function(_MarkToDo value)? markTodo,
    TResult? Function(_SortBy value)? sortBy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTodos value)? loadTodos,
    TResult Function(_TodoDataChanged value)? todoDataChanged,
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_RemoveTodo value)? removeTodo,
    TResult Function(_MarkToDo value)? markTodo,
    TResult Function(_SortBy value)? sortBy,
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
  @useResult
  $Res call({SortType? sortBy});
}

/// @nodoc
class __$$LoadTodosImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$LoadTodosImpl>
    implements _$$LoadTodosImplCopyWith<$Res> {
  __$$LoadTodosImplCopyWithImpl(
      _$LoadTodosImpl _value, $Res Function(_$LoadTodosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortBy = freezed,
  }) {
    return _then(_$LoadTodosImpl(
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortType?,
    ));
  }
}

/// @nodoc

class _$LoadTodosImpl implements _LoadTodos {
  const _$LoadTodosImpl({this.sortBy});

  @override
  final SortType? sortBy;

  @override
  String toString() {
    return 'TodoEvent.loadTodos(sortBy: $sortBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTodosImpl &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadTodosImplCopyWith<_$LoadTodosImpl> get copyWith =>
      __$$LoadTodosImplCopyWithImpl<_$LoadTodosImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SortType? sortBy) loadTodos,
    required TResult Function(TodoDataSnapshotModel snapshot) todoDataChanged,
    required TResult Function(TodoModel todoModel) addTodo,
    required TResult Function(int index) removeTodo,
    required TResult Function(int index, TodoStatus status) markTodo,
    required TResult Function(SortType sortType) sortBy,
  }) {
    return loadTodos(this.sortBy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SortType? sortBy)? loadTodos,
    TResult? Function(TodoDataSnapshotModel snapshot)? todoDataChanged,
    TResult? Function(TodoModel todoModel)? addTodo,
    TResult? Function(int index)? removeTodo,
    TResult? Function(int index, TodoStatus status)? markTodo,
    TResult? Function(SortType sortType)? sortBy,
  }) {
    return loadTodos?.call(this.sortBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SortType? sortBy)? loadTodos,
    TResult Function(TodoDataSnapshotModel snapshot)? todoDataChanged,
    TResult Function(TodoModel todoModel)? addTodo,
    TResult Function(int index)? removeTodo,
    TResult Function(int index, TodoStatus status)? markTodo,
    TResult Function(SortType sortType)? sortBy,
    required TResult orElse(),
  }) {
    if (loadTodos != null) {
      return loadTodos(this.sortBy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTodos value) loadTodos,
    required TResult Function(_TodoDataChanged value) todoDataChanged,
    required TResult Function(_AddTodo value) addTodo,
    required TResult Function(_RemoveTodo value) removeTodo,
    required TResult Function(_MarkToDo value) markTodo,
    required TResult Function(_SortBy value) sortBy,
  }) {
    return loadTodos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTodos value)? loadTodos,
    TResult? Function(_TodoDataChanged value)? todoDataChanged,
    TResult? Function(_AddTodo value)? addTodo,
    TResult? Function(_RemoveTodo value)? removeTodo,
    TResult? Function(_MarkToDo value)? markTodo,
    TResult? Function(_SortBy value)? sortBy,
  }) {
    return loadTodos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTodos value)? loadTodos,
    TResult Function(_TodoDataChanged value)? todoDataChanged,
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_RemoveTodo value)? removeTodo,
    TResult Function(_MarkToDo value)? markTodo,
    TResult Function(_SortBy value)? sortBy,
    required TResult orElse(),
  }) {
    if (loadTodos != null) {
      return loadTodos(this);
    }
    return orElse();
  }
}

abstract class _LoadTodos implements TodoEvent {
  const factory _LoadTodos({final SortType? sortBy}) = _$LoadTodosImpl;

  SortType? get sortBy;
  @JsonKey(ignore: true)
  _$$LoadTodosImplCopyWith<_$LoadTodosImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(SortType? sortBy) loadTodos,
    required TResult Function(TodoDataSnapshotModel snapshot) todoDataChanged,
    required TResult Function(TodoModel todoModel) addTodo,
    required TResult Function(int index) removeTodo,
    required TResult Function(int index, TodoStatus status) markTodo,
    required TResult Function(SortType sortType) sortBy,
  }) {
    return todoDataChanged(snapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SortType? sortBy)? loadTodos,
    TResult? Function(TodoDataSnapshotModel snapshot)? todoDataChanged,
    TResult? Function(TodoModel todoModel)? addTodo,
    TResult? Function(int index)? removeTodo,
    TResult? Function(int index, TodoStatus status)? markTodo,
    TResult? Function(SortType sortType)? sortBy,
  }) {
    return todoDataChanged?.call(snapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SortType? sortBy)? loadTodos,
    TResult Function(TodoDataSnapshotModel snapshot)? todoDataChanged,
    TResult Function(TodoModel todoModel)? addTodo,
    TResult Function(int index)? removeTodo,
    TResult Function(int index, TodoStatus status)? markTodo,
    TResult Function(SortType sortType)? sortBy,
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
    required TResult Function(_RemoveTodo value) removeTodo,
    required TResult Function(_MarkToDo value) markTodo,
    required TResult Function(_SortBy value) sortBy,
  }) {
    return todoDataChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTodos value)? loadTodos,
    TResult? Function(_TodoDataChanged value)? todoDataChanged,
    TResult? Function(_AddTodo value)? addTodo,
    TResult? Function(_RemoveTodo value)? removeTodo,
    TResult? Function(_MarkToDo value)? markTodo,
    TResult? Function(_SortBy value)? sortBy,
  }) {
    return todoDataChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTodos value)? loadTodos,
    TResult Function(_TodoDataChanged value)? todoDataChanged,
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_RemoveTodo value)? removeTodo,
    TResult Function(_MarkToDo value)? markTodo,
    TResult Function(_SortBy value)? sortBy,
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
    required TResult Function(SortType? sortBy) loadTodos,
    required TResult Function(TodoDataSnapshotModel snapshot) todoDataChanged,
    required TResult Function(TodoModel todoModel) addTodo,
    required TResult Function(int index) removeTodo,
    required TResult Function(int index, TodoStatus status) markTodo,
    required TResult Function(SortType sortType) sortBy,
  }) {
    return addTodo(todoModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SortType? sortBy)? loadTodos,
    TResult? Function(TodoDataSnapshotModel snapshot)? todoDataChanged,
    TResult? Function(TodoModel todoModel)? addTodo,
    TResult? Function(int index)? removeTodo,
    TResult? Function(int index, TodoStatus status)? markTodo,
    TResult? Function(SortType sortType)? sortBy,
  }) {
    return addTodo?.call(todoModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SortType? sortBy)? loadTodos,
    TResult Function(TodoDataSnapshotModel snapshot)? todoDataChanged,
    TResult Function(TodoModel todoModel)? addTodo,
    TResult Function(int index)? removeTodo,
    TResult Function(int index, TodoStatus status)? markTodo,
    TResult Function(SortType sortType)? sortBy,
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
    required TResult Function(_RemoveTodo value) removeTodo,
    required TResult Function(_MarkToDo value) markTodo,
    required TResult Function(_SortBy value) sortBy,
  }) {
    return addTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTodos value)? loadTodos,
    TResult? Function(_TodoDataChanged value)? todoDataChanged,
    TResult? Function(_AddTodo value)? addTodo,
    TResult? Function(_RemoveTodo value)? removeTodo,
    TResult? Function(_MarkToDo value)? markTodo,
    TResult? Function(_SortBy value)? sortBy,
  }) {
    return addTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTodos value)? loadTodos,
    TResult Function(_TodoDataChanged value)? todoDataChanged,
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_RemoveTodo value)? removeTodo,
    TResult Function(_MarkToDo value)? markTodo,
    TResult Function(_SortBy value)? sortBy,
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
abstract class _$$RemoveTodoImplCopyWith<$Res> {
  factory _$$RemoveTodoImplCopyWith(
          _$RemoveTodoImpl value, $Res Function(_$RemoveTodoImpl) then) =
      __$$RemoveTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$RemoveTodoImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$RemoveTodoImpl>
    implements _$$RemoveTodoImplCopyWith<$Res> {
  __$$RemoveTodoImplCopyWithImpl(
      _$RemoveTodoImpl _value, $Res Function(_$RemoveTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$RemoveTodoImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveTodoImpl implements _RemoveTodo {
  const _$RemoveTodoImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'TodoEvent.removeTodo(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveTodoImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveTodoImplCopyWith<_$RemoveTodoImpl> get copyWith =>
      __$$RemoveTodoImplCopyWithImpl<_$RemoveTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SortType? sortBy) loadTodos,
    required TResult Function(TodoDataSnapshotModel snapshot) todoDataChanged,
    required TResult Function(TodoModel todoModel) addTodo,
    required TResult Function(int index) removeTodo,
    required TResult Function(int index, TodoStatus status) markTodo,
    required TResult Function(SortType sortType) sortBy,
  }) {
    return removeTodo(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SortType? sortBy)? loadTodos,
    TResult? Function(TodoDataSnapshotModel snapshot)? todoDataChanged,
    TResult? Function(TodoModel todoModel)? addTodo,
    TResult? Function(int index)? removeTodo,
    TResult? Function(int index, TodoStatus status)? markTodo,
    TResult? Function(SortType sortType)? sortBy,
  }) {
    return removeTodo?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SortType? sortBy)? loadTodos,
    TResult Function(TodoDataSnapshotModel snapshot)? todoDataChanged,
    TResult Function(TodoModel todoModel)? addTodo,
    TResult Function(int index)? removeTodo,
    TResult Function(int index, TodoStatus status)? markTodo,
    TResult Function(SortType sortType)? sortBy,
    required TResult orElse(),
  }) {
    if (removeTodo != null) {
      return removeTodo(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTodos value) loadTodos,
    required TResult Function(_TodoDataChanged value) todoDataChanged,
    required TResult Function(_AddTodo value) addTodo,
    required TResult Function(_RemoveTodo value) removeTodo,
    required TResult Function(_MarkToDo value) markTodo,
    required TResult Function(_SortBy value) sortBy,
  }) {
    return removeTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTodos value)? loadTodos,
    TResult? Function(_TodoDataChanged value)? todoDataChanged,
    TResult? Function(_AddTodo value)? addTodo,
    TResult? Function(_RemoveTodo value)? removeTodo,
    TResult? Function(_MarkToDo value)? markTodo,
    TResult? Function(_SortBy value)? sortBy,
  }) {
    return removeTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTodos value)? loadTodos,
    TResult Function(_TodoDataChanged value)? todoDataChanged,
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_RemoveTodo value)? removeTodo,
    TResult Function(_MarkToDo value)? markTodo,
    TResult Function(_SortBy value)? sortBy,
    required TResult orElse(),
  }) {
    if (removeTodo != null) {
      return removeTodo(this);
    }
    return orElse();
  }
}

abstract class _RemoveTodo implements TodoEvent {
  const factory _RemoveTodo({required final int index}) = _$RemoveTodoImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$RemoveTodoImplCopyWith<_$RemoveTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkToDoImplCopyWith<$Res> {
  factory _$$MarkToDoImplCopyWith(
          _$MarkToDoImpl value, $Res Function(_$MarkToDoImpl) then) =
      __$$MarkToDoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, TodoStatus status});

  $TodoStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$MarkToDoImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$MarkToDoImpl>
    implements _$$MarkToDoImplCopyWith<$Res> {
  __$$MarkToDoImplCopyWithImpl(
      _$MarkToDoImpl _value, $Res Function(_$MarkToDoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? status = null,
  }) {
    return _then(_$MarkToDoImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoStatusCopyWith<$Res> get status {
    return $TodoStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc

class _$MarkToDoImpl implements _MarkToDo {
  const _$MarkToDoImpl({required this.index, required this.status});

  @override
  final int index;
  @override
  final TodoStatus status;

  @override
  String toString() {
    return 'TodoEvent.markTodo(index: $index, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkToDoImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkToDoImplCopyWith<_$MarkToDoImpl> get copyWith =>
      __$$MarkToDoImplCopyWithImpl<_$MarkToDoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SortType? sortBy) loadTodos,
    required TResult Function(TodoDataSnapshotModel snapshot) todoDataChanged,
    required TResult Function(TodoModel todoModel) addTodo,
    required TResult Function(int index) removeTodo,
    required TResult Function(int index, TodoStatus status) markTodo,
    required TResult Function(SortType sortType) sortBy,
  }) {
    return markTodo(index, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SortType? sortBy)? loadTodos,
    TResult? Function(TodoDataSnapshotModel snapshot)? todoDataChanged,
    TResult? Function(TodoModel todoModel)? addTodo,
    TResult? Function(int index)? removeTodo,
    TResult? Function(int index, TodoStatus status)? markTodo,
    TResult? Function(SortType sortType)? sortBy,
  }) {
    return markTodo?.call(index, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SortType? sortBy)? loadTodos,
    TResult Function(TodoDataSnapshotModel snapshot)? todoDataChanged,
    TResult Function(TodoModel todoModel)? addTodo,
    TResult Function(int index)? removeTodo,
    TResult Function(int index, TodoStatus status)? markTodo,
    TResult Function(SortType sortType)? sortBy,
    required TResult orElse(),
  }) {
    if (markTodo != null) {
      return markTodo(index, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTodos value) loadTodos,
    required TResult Function(_TodoDataChanged value) todoDataChanged,
    required TResult Function(_AddTodo value) addTodo,
    required TResult Function(_RemoveTodo value) removeTodo,
    required TResult Function(_MarkToDo value) markTodo,
    required TResult Function(_SortBy value) sortBy,
  }) {
    return markTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTodos value)? loadTodos,
    TResult? Function(_TodoDataChanged value)? todoDataChanged,
    TResult? Function(_AddTodo value)? addTodo,
    TResult? Function(_RemoveTodo value)? removeTodo,
    TResult? Function(_MarkToDo value)? markTodo,
    TResult? Function(_SortBy value)? sortBy,
  }) {
    return markTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTodos value)? loadTodos,
    TResult Function(_TodoDataChanged value)? todoDataChanged,
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_RemoveTodo value)? removeTodo,
    TResult Function(_MarkToDo value)? markTodo,
    TResult Function(_SortBy value)? sortBy,
    required TResult orElse(),
  }) {
    if (markTodo != null) {
      return markTodo(this);
    }
    return orElse();
  }
}

abstract class _MarkToDo implements TodoEvent {
  const factory _MarkToDo(
      {required final int index,
      required final TodoStatus status}) = _$MarkToDoImpl;

  int get index;
  TodoStatus get status;
  @JsonKey(ignore: true)
  _$$MarkToDoImplCopyWith<_$MarkToDoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SortByImplCopyWith<$Res> {
  factory _$$SortByImplCopyWith(
          _$SortByImpl value, $Res Function(_$SortByImpl) then) =
      __$$SortByImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SortType sortType});
}

/// @nodoc
class __$$SortByImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$SortByImpl>
    implements _$$SortByImplCopyWith<$Res> {
  __$$SortByImplCopyWithImpl(
      _$SortByImpl _value, $Res Function(_$SortByImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortType = null,
  }) {
    return _then(_$SortByImpl(
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortType,
    ));
  }
}

/// @nodoc

class _$SortByImpl implements _SortBy {
  const _$SortByImpl({required this.sortType});

  @override
  final SortType sortType;

  @override
  String toString() {
    return 'TodoEvent.sortBy(sortType: $sortType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortByImpl &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SortByImplCopyWith<_$SortByImpl> get copyWith =>
      __$$SortByImplCopyWithImpl<_$SortByImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SortType? sortBy) loadTodos,
    required TResult Function(TodoDataSnapshotModel snapshot) todoDataChanged,
    required TResult Function(TodoModel todoModel) addTodo,
    required TResult Function(int index) removeTodo,
    required TResult Function(int index, TodoStatus status) markTodo,
    required TResult Function(SortType sortType) sortBy,
  }) {
    return sortBy(sortType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SortType? sortBy)? loadTodos,
    TResult? Function(TodoDataSnapshotModel snapshot)? todoDataChanged,
    TResult? Function(TodoModel todoModel)? addTodo,
    TResult? Function(int index)? removeTodo,
    TResult? Function(int index, TodoStatus status)? markTodo,
    TResult? Function(SortType sortType)? sortBy,
  }) {
    return sortBy?.call(sortType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SortType? sortBy)? loadTodos,
    TResult Function(TodoDataSnapshotModel snapshot)? todoDataChanged,
    TResult Function(TodoModel todoModel)? addTodo,
    TResult Function(int index)? removeTodo,
    TResult Function(int index, TodoStatus status)? markTodo,
    TResult Function(SortType sortType)? sortBy,
    required TResult orElse(),
  }) {
    if (sortBy != null) {
      return sortBy(sortType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTodos value) loadTodos,
    required TResult Function(_TodoDataChanged value) todoDataChanged,
    required TResult Function(_AddTodo value) addTodo,
    required TResult Function(_RemoveTodo value) removeTodo,
    required TResult Function(_MarkToDo value) markTodo,
    required TResult Function(_SortBy value) sortBy,
  }) {
    return sortBy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTodos value)? loadTodos,
    TResult? Function(_TodoDataChanged value)? todoDataChanged,
    TResult? Function(_AddTodo value)? addTodo,
    TResult? Function(_RemoveTodo value)? removeTodo,
    TResult? Function(_MarkToDo value)? markTodo,
    TResult? Function(_SortBy value)? sortBy,
  }) {
    return sortBy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTodos value)? loadTodos,
    TResult Function(_TodoDataChanged value)? todoDataChanged,
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_RemoveTodo value)? removeTodo,
    TResult Function(_MarkToDo value)? markTodo,
    TResult Function(_SortBy value)? sortBy,
    required TResult orElse(),
  }) {
    if (sortBy != null) {
      return sortBy(this);
    }
    return orElse();
  }
}

abstract class _SortBy implements TodoEvent {
  const factory _SortBy({required final SortType sortType}) = _$SortByImpl;

  SortType get sortType;
  @JsonKey(ignore: true)
  _$$SortByImplCopyWith<_$SortByImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodoState {
  List<TodoItem> get todoModels => throw _privateConstructorUsedError;
  SortType get sortType => throw _privateConstructorUsedError;
  TodoDataSnapshotModel? get snapshot => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)
        idle,
    required TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)
        progress,
    required TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)
        failed,
    required TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot, Object? error)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        idle,
    TResult? Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        progress,
    TResult? Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        failed,
    TResult? Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot, Object? error)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        idle,
    TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        progress,
    TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        failed,
    TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot, Object? error)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Progress value)? progress,
    TResult Function(_Failed value)? failed,
    TResult Function(_Error value)? error,
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
  $Res call(
      {List<TodoItem> todoModels,
      SortType sortType,
      TodoDataSnapshotModel? snapshot});
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
    Object? sortType = null,
    Object? snapshot = freezed,
  }) {
    return _then(_value.copyWith(
      todoModels: null == todoModels
          ? _value.todoModels
          : todoModels // ignore: cast_nullable_to_non_nullable
              as List<TodoItem>,
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortType,
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
  $Res call(
      {List<TodoItem> todoModels,
      SortType sortType,
      TodoDataSnapshotModel? snapshot});
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
    Object? sortType = null,
    Object? snapshot = freezed,
  }) {
    return _then(_$IdleImpl(
      todoModels: null == todoModels
          ? _value._todoModels
          : todoModels // ignore: cast_nullable_to_non_nullable
              as List<TodoItem>,
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortType,
      snapshot: freezed == snapshot
          ? _value.snapshot
          : snapshot // ignore: cast_nullable_to_non_nullable
              as TodoDataSnapshotModel?,
    ));
  }
}

/// @nodoc

class _$IdleImpl extends _Idle {
  const _$IdleImpl(
      {required final List<TodoItem> todoModels,
      required this.sortType,
      this.snapshot})
      : _todoModels = todoModels,
        super._();

  final List<TodoItem> _todoModels;
  @override
  List<TodoItem> get todoModels {
    if (_todoModels is EqualUnmodifiableListView) return _todoModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todoModels);
  }

  @override
  final SortType sortType;
  @override
  final TodoDataSnapshotModel? snapshot;

  @override
  String toString() {
    return 'TodoState.idle(todoModels: $todoModels, sortType: $sortType, snapshot: $snapshot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleImpl &&
            const DeepCollectionEquality()
                .equals(other._todoModels, _todoModels) &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType) &&
            (identical(other.snapshot, snapshot) ||
                other.snapshot == snapshot));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_todoModels), sortType, snapshot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdleImplCopyWith<_$IdleImpl> get copyWith =>
      __$$IdleImplCopyWithImpl<_$IdleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)
        idle,
    required TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)
        progress,
    required TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)
        failed,
    required TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot, Object? error)
        error,
  }) {
    return idle(todoModels, sortType, snapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        idle,
    TResult? Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        progress,
    TResult? Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        failed,
    TResult? Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot, Object? error)?
        error,
  }) {
    return idle?.call(todoModels, sortType, snapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        idle,
    TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        progress,
    TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        failed,
    TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot, Object? error)?
        error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(todoModels, sortType, snapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Error value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Error value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Progress value)? progress,
    TResult Function(_Failed value)? failed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle extends TodoState {
  const factory _Idle(
      {required final List<TodoItem> todoModels,
      required final SortType sortType,
      final TodoDataSnapshotModel? snapshot}) = _$IdleImpl;
  const _Idle._() : super._();

  @override
  List<TodoItem> get todoModels;
  @override
  SortType get sortType;
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
  $Res call(
      {List<TodoItem> todoModels,
      SortType sortType,
      TodoDataSnapshotModel? snapshot});
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
    Object? sortType = null,
    Object? snapshot = freezed,
  }) {
    return _then(_$ProgressImpl(
      todoModels: null == todoModels
          ? _value._todoModels
          : todoModels // ignore: cast_nullable_to_non_nullable
              as List<TodoItem>,
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortType,
      snapshot: freezed == snapshot
          ? _value.snapshot
          : snapshot // ignore: cast_nullable_to_non_nullable
              as TodoDataSnapshotModel?,
    ));
  }
}

/// @nodoc

class _$ProgressImpl extends _Progress {
  const _$ProgressImpl(
      {required final List<TodoItem> todoModels,
      required this.sortType,
      this.snapshot})
      : _todoModels = todoModels,
        super._();

  final List<TodoItem> _todoModels;
  @override
  List<TodoItem> get todoModels {
    if (_todoModels is EqualUnmodifiableListView) return _todoModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todoModels);
  }

  @override
  final SortType sortType;
  @override
  final TodoDataSnapshotModel? snapshot;

  @override
  String toString() {
    return 'TodoState.progress(todoModels: $todoModels, sortType: $sortType, snapshot: $snapshot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressImpl &&
            const DeepCollectionEquality()
                .equals(other._todoModels, _todoModels) &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType) &&
            (identical(other.snapshot, snapshot) ||
                other.snapshot == snapshot));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_todoModels), sortType, snapshot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressImplCopyWith<_$ProgressImpl> get copyWith =>
      __$$ProgressImplCopyWithImpl<_$ProgressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)
        idle,
    required TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)
        progress,
    required TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)
        failed,
    required TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot, Object? error)
        error,
  }) {
    return progress(todoModels, sortType, snapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        idle,
    TResult? Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        progress,
    TResult? Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        failed,
    TResult? Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot, Object? error)?
        error,
  }) {
    return progress?.call(todoModels, sortType, snapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        idle,
    TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        progress,
    TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        failed,
    TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot, Object? error)?
        error,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(todoModels, sortType, snapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Error value) error,
  }) {
    return progress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Error value)? error,
  }) {
    return progress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Progress value)? progress,
    TResult Function(_Failed value)? failed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(this);
    }
    return orElse();
  }
}

abstract class _Progress extends TodoState {
  const factory _Progress(
      {required final List<TodoItem> todoModels,
      required final SortType sortType,
      final TodoDataSnapshotModel? snapshot}) = _$ProgressImpl;
  const _Progress._() : super._();

  @override
  List<TodoItem> get todoModels;
  @override
  SortType get sortType;
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
  $Res call(
      {List<TodoItem> todoModels,
      SortType sortType,
      TodoDataSnapshotModel? snapshot});
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
    Object? sortType = null,
    Object? snapshot = freezed,
  }) {
    return _then(_$FailedImpl(
      todoModels: null == todoModels
          ? _value._todoModels
          : todoModels // ignore: cast_nullable_to_non_nullable
              as List<TodoItem>,
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortType,
      snapshot: freezed == snapshot
          ? _value.snapshot
          : snapshot // ignore: cast_nullable_to_non_nullable
              as TodoDataSnapshotModel?,
    ));
  }
}

/// @nodoc

class _$FailedImpl extends _Failed {
  const _$FailedImpl(
      {required final List<TodoItem> todoModels,
      required this.sortType,
      this.snapshot})
      : _todoModels = todoModels,
        super._();

  final List<TodoItem> _todoModels;
  @override
  List<TodoItem> get todoModels {
    if (_todoModels is EqualUnmodifiableListView) return _todoModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todoModels);
  }

  @override
  final SortType sortType;
  @override
  final TodoDataSnapshotModel? snapshot;

  @override
  String toString() {
    return 'TodoState.failed(todoModels: $todoModels, sortType: $sortType, snapshot: $snapshot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            const DeepCollectionEquality()
                .equals(other._todoModels, _todoModels) &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType) &&
            (identical(other.snapshot, snapshot) ||
                other.snapshot == snapshot));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_todoModels), sortType, snapshot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)
        idle,
    required TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)
        progress,
    required TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)
        failed,
    required TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot, Object? error)
        error,
  }) {
    return failed(todoModels, sortType, snapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        idle,
    TResult? Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        progress,
    TResult? Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        failed,
    TResult? Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot, Object? error)?
        error,
  }) {
    return failed?.call(todoModels, sortType, snapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        idle,
    TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        progress,
    TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        failed,
    TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot, Object? error)?
        error,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(todoModels, sortType, snapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Error value) error,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Error value)? error,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Progress value)? progress,
    TResult Function(_Failed value)? failed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed extends TodoState {
  const factory _Failed(
      {required final List<TodoItem> todoModels,
      required final SortType sortType,
      final TodoDataSnapshotModel? snapshot}) = _$FailedImpl;
  const _Failed._() : super._();

  @override
  List<TodoItem> get todoModels;
  @override
  SortType get sortType;
  @override
  TodoDataSnapshotModel? get snapshot;
  @override
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TodoItem> todoModels,
      SortType sortType,
      TodoDataSnapshotModel? snapshot,
      Object? error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoModels = null,
    Object? sortType = null,
    Object? snapshot = freezed,
    Object? error = freezed,
  }) {
    return _then(_$ErrorImpl(
      todoModels: null == todoModels
          ? _value._todoModels
          : todoModels // ignore: cast_nullable_to_non_nullable
              as List<TodoItem>,
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortType,
      snapshot: freezed == snapshot
          ? _value.snapshot
          : snapshot // ignore: cast_nullable_to_non_nullable
              as TodoDataSnapshotModel?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$ErrorImpl extends _Error {
  const _$ErrorImpl(
      {required final List<TodoItem> todoModels,
      required this.sortType,
      this.snapshot,
      this.error})
      : _todoModels = todoModels,
        super._();

  final List<TodoItem> _todoModels;
  @override
  List<TodoItem> get todoModels {
    if (_todoModels is EqualUnmodifiableListView) return _todoModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todoModels);
  }

  @override
  final SortType sortType;
  @override
  final TodoDataSnapshotModel? snapshot;
  @override
  final Object? error;

  @override
  String toString() {
    return 'TodoState.error(todoModels: $todoModels, sortType: $sortType, snapshot: $snapshot, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            const DeepCollectionEquality()
                .equals(other._todoModels, _todoModels) &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType) &&
            (identical(other.snapshot, snapshot) ||
                other.snapshot == snapshot) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_todoModels),
      sortType,
      snapshot,
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)
        idle,
    required TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)
        progress,
    required TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)
        failed,
    required TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot, Object? error)
        error,
  }) {
    return error(todoModels, sortType, snapshot, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        idle,
    TResult? Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        progress,
    TResult? Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        failed,
    TResult? Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot, Object? error)?
        error,
  }) {
    return error?.call(todoModels, sortType, snapshot, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        idle,
    TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        progress,
    TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot)?
        failed,
    TResult Function(List<TodoItem> todoModels, SortType sortType,
            TodoDataSnapshotModel? snapshot, Object? error)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(todoModels, sortType, snapshot, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Progress value)? progress,
    TResult Function(_Failed value)? failed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends TodoState {
  const factory _Error(
      {required final List<TodoItem> todoModels,
      required final SortType sortType,
      final TodoDataSnapshotModel? snapshot,
      final Object? error}) = _$ErrorImpl;
  const _Error._() : super._();

  @override
  List<TodoItem> get todoModels;
  @override
  SortType get sortType;
  @override
  TodoDataSnapshotModel? get snapshot;
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
