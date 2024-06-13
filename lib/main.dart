import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:todo_firebase/core/app_log.dart';
import 'package:todo_firebase/feature/app/logic/app_runner.dart';

void main() {
  final logger = Logger("main");

  final appLog = AppLogConfig();

  appLog.setup();

  runZonedGuarded(
    () => AppRunner().run(),
    (object, stackTrace) => logger.severe("Error occured: $object", object, stackTrace),
  );
}
