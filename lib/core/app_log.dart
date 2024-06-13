import 'dart:async';

import 'package:logging/logging.dart';

class AppLogConfig {
  void setup() {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen(_onLog);
  }

  void _onLog(LogRecord record) {
    final buffer = StringBuffer();

    buffer
      ..write(record.level.name)
      ..write(" | ")
      ..write("${record.time}")
      ..write(" |-> ")
      ..writeln(record.message);
    if (record.object != null) {
      buffer.writeln(record.object);
    }
    if (record.stackTrace != null) {
      buffer.writeln(record.stackTrace);
    }

    Zone.current.print(buffer.toString());
  }
}
