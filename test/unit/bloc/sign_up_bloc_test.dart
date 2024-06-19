import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todo_firebase/feature/auth/data/model/default_sign_in_data.dart';
import 'package:todo_firebase/feature/auth/data/model/user_credential_model.dart';
import 'package:todo_firebase/feature/server_communication/server_error.dart';
import 'package:todo_firebase/feature/server_communication/server_result.dart';
import 'package:todo_firebase/feature/sign_up/bloc/sign_up_bloc.dart';
import 'package:todo_firebase/feature/sign_up/data/sign_up_repository.dart';

import 'mocks.dart';



void main() {
  group("SignUpBloc test success >", () {
    late final SignUpRepository signUpRepository;
    late final DefaultAuthUserData userData;

    setUp(() {
      signUpRepository = SignUpRepositoryMock();
      userData = DefaultAuthUserDataMock();

      final serverResultValue =
          ServerResult.success(entity: UserCredentialModelMock());
      final serverResult = Future(() => serverResultValue);

      when(() => signUpRepository.defaultSignUp(userData))
          .thenAnswer((_) => serverResult);
    });

    blocTest(
      "Success test",
      build: () => SignUpBloc(
        signUpRepository: signUpRepository,
        initialState: const SignUpState.idle(),
      ),
      act: (bloc) => bloc.add(SignUpEvent.defaultSignUp(data: userData)),
      expect: () => [const SignUpState.progress(), const SignUpState.success()],
    );
  });

  group("SignUpBloc test failed >", () {
    late final SignUpRepository signUpRepository;
    late final DefaultAuthUserData userData;
    late final ServerError serverError;
    setUp(() {
      signUpRepository = SignUpRepositoryMock();
      userData = DefaultAuthUserDataMock();

      serverError = ServerErrorMock();

      final serverResultValue =
          ServerResult<UserCredentialModel>.failed(error: serverError);

      final serverResult = Future(() => serverResultValue);

      when(() => signUpRepository.defaultSignUp(userData))
          .thenAnswer((_) => serverResult);
    });

    blocTest(
      "Fail test test",
      build: () => SignUpBloc(
        signUpRepository: signUpRepository,
        initialState: const SignUpState.idle(),
      ),
      act: (bloc) => bloc.add(SignUpEvent.defaultSignUp(data: userData)),
      expect: () => [
        const SignUpState.progress(),
        SignUpState.error(error: serverError),
      ],
    );
  });
}
