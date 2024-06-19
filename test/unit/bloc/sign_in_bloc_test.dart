import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todo_firebase/feature/auth/data/model/default_sign_in_data.dart';
import 'package:todo_firebase/feature/auth/data/model/user_credential_model.dart';
import 'package:todo_firebase/feature/server_communication/server_error.dart';
import 'package:todo_firebase/feature/server_communication/server_result.dart';
import 'package:todo_firebase/feature/sign_in/bloc/sign_in_bloc.dart';
import 'package:todo_firebase/feature/sign_in/data/sign_in_repository.dart';

import 'mocks.dart';

void main() {
  group("SignInBloc test success >", () {
    late final SignInRepository signInRepository;
    late final DefaultAuthUserData userData;
    setUp(() {
      signInRepository = SignInRepositoryMock();
      userData = DefaultAuthUserDataMock();

      when(() => signInRepository.signInWithEmailAndPassword(userData))
          .thenAnswer(
        (_) => Future(
          () => ServerResult.success(entity: UserCredentialModelMock()),
        ),
      );
    });

    blocTest(
      "Success test",
      build: () => SignInBloc(
        signInRepository: signInRepository,
        initState: const SignInState.idle(),
      ),
      act: (bloc) => bloc.add(SignInEvent.defaultSignIn(signInData: userData)),
      expect: () => [
        const SignInState.processing(),
        const SignInState.success(),
      ],
    );
  });

  group("SignInBloc test failed >", () {
    late final SignInRepository signInRepository;
    late final DefaultAuthUserData userData;
    late final ServerError serverError;
    setUp(() {
      signInRepository = SignInRepositoryMock();
      userData = DefaultAuthUserDataMock();
      serverError = ServerErrorMock();
      when(() => signInRepository.signInWithEmailAndPassword(userData))
          .thenAnswer(
        (_) => Future(
          () => ServerResult<UserCredentialModel>.failed(error: serverError),
        ),
      );
    });

    blocTest(
      "Failed test",
      build: () => SignInBloc(
        signInRepository: signInRepository,
        initState: const SignInState.idle(),
      ),
      act: (bloc) => bloc.add(SignInEvent.defaultSignIn(signInData: userData)),
      expect: () => [
        const SignInState.processing(),
        SignInState.failed(validationError: serverError),
      ],
    );
  });
}
