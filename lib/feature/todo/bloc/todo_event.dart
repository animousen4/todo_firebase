part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.loadTodos({SortType? sortBy}) = _LoadTodos;
  const factory TodoEvent.todoDataChanged({required TodoDataSnapshotModel snapshot}) = _TodoDataChanged;
  const factory TodoEvent.addTodo({required TodoModel todoModel}) = _AddTodo;
  const factory TodoEvent.removeTodo({required int index}) = _RemoveTodo;
  const factory TodoEvent.markTodo({required int index, required TodoStatus status}) = _MarkToDo;
  const factory TodoEvent.sortBy({required SortType sortType }) = _SortBy;
}