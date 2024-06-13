import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:todo_firebase/core/app_bloc_observer.dart';
import 'package:todo_firebase/feature/app/widget/app.dart';
import 'package:todo_firebase/feature/initialization/logic/dependencies_initializer.dart';
import 'package:todo_firebase/firebase_options.dart';

class AppRunner {
  final logger = Logger("AppRunner");

  final DependenciesInitializer _dependenciesInitializer;

  AppRunner() : _dependenciesInitializer = DefaultDependenciesInitializer();

  Future<void> _initializeOverrides() async {
    Bloc.observer = AppBlocObserver();
    Bloc.transformer = bloc_concurrency.sequential();
  }

  Future<FirebaseAuth> _initializeFirebase() async {
    
    final app = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    return FirebaseAuth.instanceFor(app: app);
  }

  Future<void> run() async {
    WidgetsFlutterBinding.ensureInitialized();

    final firebaseAuth = await _initializeFirebase();
    await _initializeOverrides();
    
    final dependencies = await _dependenciesInitializer.initialize(firebaseAuth);
    

    try {
      runApp(
        App(
          dependencies: dependencies,
        ),
      );
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
