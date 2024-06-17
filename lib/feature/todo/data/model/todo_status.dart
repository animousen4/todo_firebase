import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_status.freezed.dart';

@freezed
class TodoStatus with _$TodoStatus {
  const factory TodoStatus.planned() = PlannedTodoStatus;
  const factory TodoStatus.completed() = CompletedTodoStatus;
  const factory TodoStatus.deleted() = DeletedTodoStatus;
}