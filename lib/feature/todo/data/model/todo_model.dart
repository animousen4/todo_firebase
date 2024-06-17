
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_firebase/feature/todo/data/model/converter/timestamp_json_converter.dart';
import 'package:todo_firebase/feature/todo/data/model/converter/todo_status_json_converter.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'todo_model.g.dart';

@JsonSerializable()
class TodoModel {
  final String title;
  final String description;

  @TimestampJsonConverter()
  final Timestamp createDate;

  @TimestampJsonConverter()
  final Timestamp deadlineDate;

  @TodoStatusJsonConverter()
  final TodoStatus? todoStatus;

  TodoModel({
    required this.title,
    required this.description,
    required this.createDate,
    required this.deadlineDate,
    required this.todoStatus,
  });

  factory TodoModel.fromJson(Map<String, dynamic> json) => _$TodoModelFromJson(json);

  Map<String, dynamic> toJson() => _$TodoModelToJson(this);


}
