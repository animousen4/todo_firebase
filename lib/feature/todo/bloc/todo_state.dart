part of 'todo_bloc.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState.idle() = _Idle;
}
