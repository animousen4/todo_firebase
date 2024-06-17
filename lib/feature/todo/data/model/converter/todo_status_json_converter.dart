import 'package:todo_firebase/feature/todo/data/model/todo_status.dart';

import 'package:json_annotation/json_annotation.dart';

class TodoStatusJsonConverter
    extends JsonConverter<TodoStatus, Map<String, dynamic>> {
  
  const TodoStatusJsonConverter();
  
  static const String _planned = "PLANNED";
  static const String _deleted = "DELETED";
  static const String _completed = "COMPLETED";
  @override
  TodoStatus fromJson(Map<String, dynamic> json) {
    final name = json["name"];
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
  Map<String, dynamic> toJson(TodoStatus object) {
    final name = object.map(planned: (_) => _planned, completed: (_) => _completed, deleted: (_) => _deleted);

    return <String, dynamic>{
      "name" : name
    };
  }
}
