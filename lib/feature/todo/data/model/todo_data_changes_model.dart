import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_item.dart';

part 'todo_data_changes_model.freezed.dart';

@freezed
class TodoDataChangesModel with _$TodoDataChangesModel {
  const factory TodoDataChangesModel.added(
      {required TodoItem todoItem, required int newIndex,}) = _Added;
  const factory TodoDataChangesModel.modified(
      {required TodoItem todoItem,
      required int newIndex,
      required int oldIndex,}) = _Modified;
  const factory TodoDataChangesModel.removed(
      {required TodoItem todoItem, required int oldIndex,}) = _Removed;
}
