part of 'todo_bloc.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState.idle({required List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot}) = _Idle;
  const factory TodoState.progress({required List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot}) =
      _Progress;
  const factory TodoState.failed({required List<TodoModel> todoModels, TodoDataSnapshotModel? snapshot}) = _Failed;
}
