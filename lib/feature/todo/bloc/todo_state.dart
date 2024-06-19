part of 'todo_bloc.dart';

@freezed
class TodoState with _$TodoState {
  const TodoState._();

  bool get inProgress => maybeMap(progress: (_) => true, orElse: () => false);

  const factory TodoState.idle(
      {required List<TodoItem> todoModels,
      required SortType sortType,
      TodoDataSnapshotModel? snapshot,}) = _Idle;
  const factory TodoState.progress(
      {required List<TodoItem> todoModels,
      required SortType sortType,
      TodoDataSnapshotModel? snapshot,}) = _Progress;

  const factory TodoState.failed(
      {required List<TodoItem> todoModels,
      required SortType sortType,
      TodoDataSnapshotModel? snapshot,}) = _Failed;
  
  const factory TodoState.error(
      {required List<TodoItem> todoModels,
      required SortType sortType,
      TodoDataSnapshotModel? snapshot,
      Object? error,}) = _Error;
}
