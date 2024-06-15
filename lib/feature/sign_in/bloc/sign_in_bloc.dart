import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_firebase/feature/auth/data/model/default_sign_in_data.dart';
import 'package:todo_firebase/feature/auth/data/repository/sign_in_repository.dart';
import 'package:todo_firebase/feature/server_communication/server_error.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInRepository _signInRepository;

  SignInBloc(
      {required SignInRepository signInRepository,
      required SignInState initState})
      : _signInRepository = signInRepository,
        super(initState) {
    on<SignInEvent>((event, emit) {
      event.map(defaultSignIn: (event) => _defaultSignIn(event, emit));
    });
  }

  _defaultSignIn(_DefaultSignIn event, Emitter<SignInState> emit) async {
    emit(SignInState.processing(validationError: state.validationError));
    final result =
        await _signInRepository.signInWithEmailAndPassword(event.signInData);
  }
}
