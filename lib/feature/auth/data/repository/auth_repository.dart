import 'package:todo_firebase/feature/auth/data/model/user_model.dart';
import 'package:todo_firebase/feature/auth/data/provider/auth_data_provider.dart';

abstract interface class AuthRepository {
  Stream<UserModel?> get userStream;

  Future<UserModel?> getUser();

  Future<void> logout();
}

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataProvider _authDataProvider;

  AuthRepositoryImpl({required AuthDataProvider authDataProvider})
      : _authDataProvider = authDataProvider;
  
  @override
  Future<UserModel?> getUser() => _authDataProvider.getUser();

  @override
  Stream<UserModel?> get userStream => _authDataProvider.userStream;
  
  @override
  Future<void> logout() => _authDataProvider.logout();
}
