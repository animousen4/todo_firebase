import 'package:todo_firebase/feature/todo/data/model/mapper/dto_mapper.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_status.dart';

/// Mapper of [TodoStatus] from [String] and to [String]
class TodoStatusMapper implements DtoMapper<String, TodoStatus> {
  /// Public constructor
  const TodoStatusMapper();

  static const String _planned = "PLANNED";
  static const String _completed = "COMPLETED";

  @override
  TodoStatus mapFromDto(String name) {
    switch (name) {
      case _planned:
        return const TodoStatus.planned();
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
    );
  }
}
