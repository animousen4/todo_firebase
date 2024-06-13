import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_firebase/core/utils/build_context_extension.dart';
import 'package:todo_firebase/feature/auth/bloc/auth_bloc.dart';
import 'package:todo_firebase/feature/auth/data/model/user_model.dart';

abstract interface class AuthScopeController {
  UserModel? getUser();

  void logout();
}

class AuthScope extends StatefulWidget {
  const AuthScope({
    super.key,
    required this.authBloc,
    required this.child,
  });

  final Widget child;

  final AuthBloc authBloc;

  static AuthScopeController controllerOf(BuildContext context) =>
      context.inhOf<_InheritAuthScope>().controller;

  @override
  State<AuthScope> createState() => _AuthScopeState();
}

class _AuthScopeState extends State<AuthScope> implements AuthScopeController {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      bloc: widget.authBloc,
      builder: (context, state) => _InheritAuthScope(
        controller: this,
        state: state,
        child: widget.child,
      ),
    );
  }

  @override
  UserModel? getUser() {
    return widget.authBloc.state.userModel;
  }

  @override
  void logout() {
    widget.authBloc.add(const AuthEvent.logout());
  }
}

class _InheritAuthScope extends InheritedWidget {
  final AuthScopeController controller;
  final AuthState state;

  const _InheritAuthScope({
    required super.child,
    required this.controller,
    required this.state,
  });

  @override
  bool updateShouldNotify(_InheritAuthScope oldWidget) {
    return state != oldWidget.state;
  }
}
