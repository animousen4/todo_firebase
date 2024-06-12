import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:todo_firebase/core/app_bloc_observer.dart';
import 'package:todo_firebase/feature/app/widget/app.dart';

class AppRunner {
  final logger = Logger("AppRunner");

  Future<void> initialize() async {
    Bloc.observer = AppBlocObserver();
    Bloc.transformer = bloc_concurrency.sequential();
  }

  Future<void> run() async {
    try {
      runApp(const App());
    } catch (error, stackTrace) {
      _onError(error, stackTrace);
    }
  }

  void _onError(Object object, StackTrace stackTrace) {
    final stringBuffer = StringBuffer();

    stringBuffer.write("InitializationFailed");
    logger.severe(stringBuffer.toString(), object, stackTrace);
  }
}
