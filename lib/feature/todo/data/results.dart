import 'package:todo_firebase/feature/server_communication/server_result.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_item.dart';

/// Server result with provided list of todo (with id's)
typedef LoadedTasksResult = ServerResult<List<TodoItem>>;
