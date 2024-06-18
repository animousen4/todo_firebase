import 'package:todo_firebase/feature/todo/data/model/mapper/dto_mapper.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_status.dart';

class TodoStatusMapper implements DtoMapper<String, TodoStatus> {
  const TodoStatusMapper();

  static const String _planned = "PLANNED";
  static const String _deleted = "DELETED";
  static const String _completed = "COMPLETED";

  @override
  TodoStatus mapFromDto(String name) {
    switch (name) {
      case _planned:
        return const TodoStatus.planned();
      case _deleted:
        return const TodoStatus.deleted();
      case _completed:
        return const TodoStatus.completed();
      default:
        throw ArgumentError("Cannot convert '$name' to $TodoStatus");
    }
  }

  @override
  String mapFromModel(TodoStatus model) {
    return model.map(
        planned: (_) => _planned,
        completed: (_) => _completed,
        deleted: (_) => _deleted);
  }
}
