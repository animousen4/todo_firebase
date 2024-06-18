import 'package:todo_firebase/feature/todo/data/model/todo_sort_mechanism.dart';

enum SortType {
  createDateDesk(CreateDateSortMechanism(true)),
  createDateAsc(CreateDateSortMechanism(false)),

  dateDeadlineAsc(DeadlineDateSortMechanism(false)),
  dateDeadlineDesc(DeadlineDateSortMechanism(true)),
  complete(CompleteSortMechanism());

  const SortType(this.sortMechanism);
  final TodoSortMechanism sortMechanism;
}
