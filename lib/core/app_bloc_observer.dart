import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

/// Bloc observer for viewing state and events changes
class AppBlocObserver extends BlocObserver {
  
  final _logger = Logger("AppBlocObserver");

  @override
  void onTransition(Bloc bloc, Transition transition) {
    final stringBuffer = StringBuffer();

    stringBuffer
      ..write("Transition:")
      ..writeln("Bloc: ${bloc.runtimeType}")
      ..writeln("FROM: ${transition.currentState}")
      ..writeln("TO: ${transition.nextState}");

    _logger.info(stringBuffer.toString());
    
    super.onTransition(bloc, transition);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    final stringBuffer = StringBuffer();

    stringBuffer
      ..write("Event:")
      ..writeln("Bloc: ${bloc.runtimeType}")
      ..writeln("EVENT: ${event.runtimeType} : ${event.toString()}");

    _logger.info(stringBuffer.toString());

    super.onEvent(bloc, event);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    final stringBuffer = StringBuffer();

    stringBuffer
      ..write("Error:")
      ..writeln("Bloc: ${bloc.runtimeType}")
      ..writeln("Error: $error");

    _logger.warning(stringBuffer.toString(), error, stackTrace);
    
    super.onError(bloc, error, stackTrace);
  }
}
