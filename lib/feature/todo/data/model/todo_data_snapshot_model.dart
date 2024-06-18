// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:todo_firebase/feature/todo/data/model/todo_data_changes_model.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_item.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_model.dart';

class TodoDataSnapshotModel {
  final List<TodoItem> dataList;
  final List<TodoDataChangesModel> changes;

  TodoDataSnapshotModel({
    required this.dataList,
    required this.changes,
  });
}
