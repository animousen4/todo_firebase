import 'package:todo_firebase/feature/auth/data/model/user_credential_model.dart';
import 'package:todo_firebase/feature/server_communication/server_result.dart';

/// ServerResult with entity [UserCredentialModel] (in case of success sign up)
typedef DefaultSignUpResult = ServerResult<UserCredentialModel>;