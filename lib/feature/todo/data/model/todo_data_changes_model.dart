import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_model.dart';

part 'todo_data_changes_model.freezed.dart';
@freezed
class TodoDataChangesModel with _$TodoDataChangesModel{
  const factory TodoDataChangesModel.added({required TodoModel todoModel, required int newIndex}) = _Added;
  const factory TodoDataChangesModel.modified({required TodoModel todoModel,required int newIndex, required int oldIndex}) = _Modified;
  const factory TodoDataChangesModel.removed({required TodoModel todoModel,required int oldIndex}) = _Removed;
}