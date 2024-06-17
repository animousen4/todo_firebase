// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodoModel _$TodoModelFromJson(Map<String, dynamic> json) => TodoModel(
      title: json['title'] as String,
      description: json['description'] as String,
      createDate: const TimestampJsonConverter()
          .fromJson(json['createDate'] as Timestamp),
      deadlineDate: const TimestampJsonConverter()
          .fromJson(json['deadlineDate'] as Timestamp),
      todoStatus: const TodoStatusJsonConverter()
          .fromJson(json['todoStatus'] as String?),
    );

Map<String, dynamic> _$TodoModelToJson(TodoModel instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'createDate': const TimestampJsonConverter().toJson(instance.createDate),
      'deadlineDate':
          const TimestampJsonConverter().toJson(instance.deadlineDate),
      'todoStatus': const TodoStatusJsonConverter().toJson(instance.todoStatus),
    };
