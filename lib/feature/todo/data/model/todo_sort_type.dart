import 'package:todo_firebase/feature/todo/data/model/todo_sort_mechanism.dart';

/// Model, containing sort types
enum SortType {
  /// Sort by creation date descending
  createDateDesc(CreateDateSortMechanism(true)),

  /// Sort by creation date ascending
  createDateAsc(CreateDateSortMechanism(false)),

  /// Sort by deadline date ascending
  dateDeadlineAsc(DeadlineDateSortMechanism(false)),

  /// Sort by deadline date descending
  dateDeadlineDesc(DeadlineDateSortMechanism(true)),

  /// Sort by completion (First PLANNED, then COMPLETED)
  complete(CompleteSortMechanism());

  const SortType(this.sortMechanism);

  /// The sort mechanism
  final TodoSortMechanism sortMechanism;
}
