import 'package:mocktail/mocktail.dart';
import 'package:todo_firebase/feature/auth/data/model/default_sign_in_data.dart';
import 'package:todo_firebase/feature/auth/data/model/user_credential_model.dart';
import 'package:todo_firebase/feature/server_communication/server_error.dart';
import 'package:todo_firebase/feature/server_communication/server_result.dart';
import 'package:todo_firebase/feature/sign_in/data/sign_in_repository.dart';
import 'package:todo_firebase/feature/sign_up/data/sign_up_repository.dart';

class SignUpRepositoryMock extends Mock implements SignUpRepository {}

class SignInRepositoryMock extends Mock implements SignInRepository {}

class DefaultAuthUserDataMock extends Mock implements DefaultAuthUserData {}

class ServerUserResultMock extends Mock
    implements ServerResult<UserCredentialModel> {}

class UserCredentialModelMock extends Mock implements UserCredentialModel {}

class ServerErrorMock extends Mock implements ServerError {}