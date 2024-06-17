// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodoModel _$TodoModelFromJson(Map<String, dynamic> json) => TodoModel(
      title: json['title'] as String,
      description: json['description'] as String,
      createDate: DateTime.parse(json['createDate'] as String),
      deadlineDate: DateTime.parse(json['deadlineDate'] as String),
      todoStatus: const TodoStatusJsonConverter()
          .fromJson(json['todoStatus'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TodoModelToJson(TodoModel instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'createDate': instance.createDate.toIso8601String(),
      'deadlineDate': instance.deadlineDate.toIso8601String(),
      'todoStatus': const TodoStatusJsonConverter().toJson(instance.todoStatus),
    };
