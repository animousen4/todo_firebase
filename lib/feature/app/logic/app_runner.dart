import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:todo_firebase/core/app_bloc_observer.dart';
import 'package:todo_firebase/feature/app/widget/app.dart';
import 'package:todo_firebase/feature/app/widget/fail_app.dart';
import 'package:todo_firebase/feature/initialization/logic/dependencies_initializer.dart';
import 'package:todo_firebase/firebase_options.dart';

class AppRunner {
  final logger = Logger("AppRunner");

  final DependenciesInitializer _dependenciesInitializer;

  AppRunner() : _dependenciesInitializer = DefaultDependenciesInitializer();

  Future<void> _initializeBlocOverrides() async {
    Bloc.observer = AppBlocObserver();
    Bloc.transformer = bloc_concurrency.sequential();
  }

  Future<void> _initializeDebugFirebaseOverrides() async {
    try {
      FirebaseFirestore.instance.useFirestoreEmulator('127.0.0.1', 8080);
      await FirebaseAuth.instance.useAuthEmulator('127.0.0.1', 9099);
    } catch (e) {
      print(e);
    }
  }

  Future<FirebaseAuth> _initializeFirebase() async {
    final app = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    return FirebaseAuth.instanceFor(app: app);
  }

  Future<void> run() async {
    try {
      WidgetsFlutterBinding.ensureInitialized();

      final firebaseAuth = await _initializeFirebase();

      if (kDebugMode) {
        await _initializeDebugFirebaseOverrides();
      }

      await _initializeBlocOverrides();

      final dependencies =
          await _dependenciesInitializer.initialize(firebaseAuth);

      runApp(
        App(
          dependencies: dependencies,
        ),
      );
    } catch (error, stackTrace) {
      _onError(error, stackTrace);

      runApp(FailApp(
        reason: error,
      ));
    }
  }

  void _onError(Object object, StackTrace stackTrace) {
    final stringBuffer = StringBuffer();

    stringBuffer.write("InitializationFailed: $object");
    logger.severe(stringBuffer.toString(), object, stackTrace);
  }
}
