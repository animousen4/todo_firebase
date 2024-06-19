
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_firebase/feature/auth/data/model/default_sign_in_data.dart';
import 'package:todo_firebase/feature/server_communication/server_error.dart';
import 'package:todo_firebase/feature/sign_up/data/sign_up_repository.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

/// Sign Up bloc, which controls states [SignUpState] and events, passed from controllers
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpRepository _signUpRepository;

  /// Public constructor
  SignUpBloc({
    required SignUpRepository signUpRepository,
    required SignUpState initialState,
  })  : _signUpRepository = signUpRepository,
        super(initialState) {
    on<SignUpEvent>((event, emit) async {
      await event.map(defaultSignUp: (event) => _defaultSignUp(event, emit));
    });
  }

  Future<void> _defaultSignUp(
    _DefaultSignUp event,
    Emitter<SignUpState> emit,
  ) async {
    emit(const SignUpState.progress());
    final result = await _signUpRepository.defaultSignUp(event.data);

    result.map(
      success: (_) => emit(const SignUpState.success()),
      failed: (res) => emit(SignUpState.error(error: res.error)),
    );
  }
}
