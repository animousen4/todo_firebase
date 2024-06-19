part of 'todo_bloc.dart';

/// Todo state of [TodoBloc],
/// which stores common todos, sortType and snapshot
/// We use different states to be informated what's happening currently
@freezed
class TodoState with _$TodoState {
  const TodoState._();

  /// Bool getter of progess state
  bool get inProgress => maybeMap(progress: (_) => true, orElse: () => false);

  /// Idle state, nothing happening
  const factory TodoState.idle({
    required List<TodoItem> todoModels,
    required SortType sortType,
    TodoDataSnapshotModel? snapshot,
  }) = _Idle;

  /// Progress state, we are processing data
  const factory TodoState.progress({
    required List<TodoItem> todoModels,
    required SortType sortType,
    TodoDataSnapshotModel? snapshot,
  }) = _Progress;

  /// Controlable fail, during some operations
  const factory TodoState.failed({
    required List<TodoItem> todoModels,
    required SortType sortType,
    TodoDataSnapshotModel? snapshot,
  }) = _Failed;

  /// Something we didn't predicted, so we provide the error
  const factory TodoState.error({
    required List<TodoItem> todoModels,
    required SortType sortType,
    TodoDataSnapshotModel? snapshot,
    Object? error,
  }) = _Error;
}
