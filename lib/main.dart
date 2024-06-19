import 'dart:async';

import 'package:logging/logging.dart';
import 'package:todo_firebase/core/app_log.dart';
import 'package:todo_firebase/feature/app/logic/app_runner.dart';

Future<void> main() async {
  final logger = Logger("main");

  final appLog = AppLogConfig();
  appLog.setup();

  runZonedGuarded(
    () => AppRunnerImpl(kDebugUseFirebaseEmulator: false).run(),
    (object, stackTrace) =>
        logger.severe("Error occured: $object", object, stackTrace),
  );
}
