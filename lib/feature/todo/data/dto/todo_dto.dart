// ignore_for_file: public_member_api_docs

import 'package:cloud_firestore/cloud_firestore.dart';

/// Dto for Firebase
/// @nodoc
class TodoDto {

  final String title;

  final String description;

  final Timestamp createDate;

  final Timestamp deadlineDate;

  final String todoStatus;

  TodoDto({
    required this.title,
    required this.description,
    required this.createDate,
    required this.deadlineDate,
    required this.todoStatus,
  });

  /// Getting data from firestore
  factory TodoDto.fromFirestore(Map<String, dynamic> json) {
    return TodoDto(
        title: json["title"],
        description: json["description"],
        createDate: json["createDate"],
        deadlineDate: json["deadlineDate"],
        todoStatus: json["todoStatus"],
      );
  }

  /// Mapping into firestore format
  Map<String, dynamic> toFirestore() => {
        "title": title,
        "description": description,
        "createDate": createDate,
        "deadlineDate": deadlineDate,
        "todoStatus": todoStatus,
      };
}
