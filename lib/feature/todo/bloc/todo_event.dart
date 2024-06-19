part of 'todo_bloc.dart';

/// Events for interacting with todos
@freezed
class TodoEvent with _$TodoEvent {
  /// Loading todos event. Need only once (to connect to the stream), when user loads screen
  const factory TodoEvent.loadTodos({SortType? sortBy}) = _LoadTodos;

  /// Internal event, which will be added to the queue when data changes (from Stream)
  const factory TodoEvent.todoDataChanged({required TodoDataSnapshotModel snapshot}) = _TodoDataChanged;

  /// Event adding new todo from user
  const factory TodoEvent.addTodo({required TodoModel todoModel}) = _AddTodo;

  /// Event removing concrete todo by index
  const factory TodoEvent.removeTodo({required int index}) = _RemoveTodo;

  /// Event marking todo with special status
  const factory TodoEvent.markTodo({required int index, required TodoStatus status}) = _MarkToDo;

  /// Event sorting todo by some fields
  const factory TodoEvent.sortBy({required SortType sortType }) = _SortBy;
}