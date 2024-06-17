import 'dart:convert';

import 'package:todo_firebase/feature/todo/data/model/todo_model.dart';

class TodoModelDecoder extends Converter<String, TodoModel> {

  @override
  TodoModel convert(String input) {
    final map = jsonDecode(input);

    return TodoModel.fromJson(map);

  }

  
}