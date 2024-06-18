part of 'todo_bloc.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState.idle({required List<TodoModel> todoModels}) = _Idle;
  const factory TodoState.progress({required List<TodoModel> todoModels}) =
      _Progress;
  const factory TodoState.failed({required List<TodoModel> todoModels}) = _Failed;
}
