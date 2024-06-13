import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:todo_firebase/core/app_log.dart';
import 'package:todo_firebase/feature/app/logic/app_runner.dart';
import 'package:todo_firebase/firebase_options.dart';

Future<void> main() async {
  
  final logger = Logger("main");

  final appLog = AppLogConfig();
  appLog.setup();

  runZonedGuarded(
    () => AppRunner().run(),
    (object, stackTrace) =>
        logger.severe("Error occured: $object", object, stackTrace),
  );
}
