import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logging/logging.dart';
import 'package:todo_firebase/feature/todo/data/model/todo_model.dart';

import 'package:json_annotation/json_annotation.dart';

class TimestampJsonConverter
    extends JsonConverter<Timestamp, Timestamp> {

  const TimestampJsonConverter();
  
  @override
  Timestamp fromJson(Timestamp json) {
    return json;
  }
  
  @override
  Timestamp toJson(Timestamp object) {
    return object;
  }

}
