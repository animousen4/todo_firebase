import 'package:flutter/material.dart';
import 'package:todo_firebase/core/utils/build_context_extension.dart';
import 'package:todo_firebase/feature/initialization/model/dependencies.dart';

/// Dependencies scope, which provide [Dependencies] container instance
class DependenciesScope extends InheritedWidget {
  /// Container with dependencies
  final Dependencies dependencies;

  /// Public constructor
  const DependenciesScope({
    super.key,
    required this.dependencies,
    required super.child,
  });

  /// Getting dependencies container from context via [InheritedWidget]
  static Dependencies of(BuildContext context) =>
      context.inhOf<DependenciesScope>(listen: false).dependencies;

  /// Dependencies container never changes
  @override
  bool updateShouldNotify(DependenciesScope oldWidget) {
    return false;
  }
}
