import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo_firebase/feature/auth/data/model/user_model.dart';

class UserConverter extends Converter<User, UserModel> {
  @override
  UserModel convert(User input) {
    return UserModel(email: input.email);
  }
}
