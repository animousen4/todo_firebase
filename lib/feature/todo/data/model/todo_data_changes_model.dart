import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_item.dart';

part 'todo_data_changes_model.freezed.dart';

/// Internal Model of data changes
/// It divides in 3 types:
/// - add
/// - modify
/// - delete
/// 
/// Here we provide this 3 types
@freezed
class TodoDataChangesModel with _$TodoDataChangesModel {
  /// Data was added, contains an index to be insterted
  const factory TodoDataChangesModel.added(
      {required TodoItem todoItem, required int newIndex,}) = _Added;

  /// Data was modified, contains an old index and index to be insterted in
  const factory TodoDataChangesModel.modified(
      {required TodoItem todoItem,
      required int newIndex,
      required int oldIndex,}) = _Modified;

  /// Data was remove, contains an old index to be deleted from
  const factory TodoDataChangesModel.removed(
      {required TodoItem todoItem, required int oldIndex,}) = _Removed;
}
