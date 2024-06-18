part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.loadTodos() = _LoadTodos;
  const factory TodoEvent.todoDataChanged({required TodoDataSnapshotModel snapshot}) = _TodoDataChanged;
  const factory TodoEvent.addTodo({required TodoModel todoModel}) = _AddTodo;
  const factory TodoEvent.removeTodo({required String id}) = _RemoveTodo;
}