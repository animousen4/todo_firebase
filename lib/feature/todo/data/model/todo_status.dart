import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_status.freezed.dart';

/// Statuses of user todo
///
/// - PLANNED
/// - COMPLETED
@freezed
class TodoStatus with _$TodoStatus {
  /// Planned status. User plan to do this todo (or marked Completed as again Planned)
  const factory TodoStatus.planned() = PlannedTodoStatus;

  /// Completed status. User marked todo as completed
  const factory TodoStatus.completed() = CompletedTodoStatus;
}