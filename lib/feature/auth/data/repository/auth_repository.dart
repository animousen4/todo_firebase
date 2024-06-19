import 'package:todo_firebase/feature/auth/data/model/user_model.dart';
import 'package:todo_firebase/feature/auth/data/provider/auth_data_provider.dart';
/// Auth repository
/// Provides methods for interacting with user statuses
abstract interface class AuthRepository {

  /// Stream with user statuses
  Stream<UserModel?> get userStream;

  /// Getter of current user status
  Future<UserModel?> getUser();

  /// Logout method
  Future<void> logout();
}

/// Implementation of [AuthRepository]
class AuthRepositoryImpl implements AuthRepository {
  final AuthDataProvider _authDataProvider;

  /// Public constructor
  AuthRepositoryImpl({required AuthDataProvider authDataProvider})
      : _authDataProvider = authDataProvider;
  
  @override
  Future<UserModel?> getUser() => _authDataProvider.getUser();

  @override
  Stream<UserModel?> get userStream => _authDataProvider.userStream;
  
  @override
  Future<void> logout() => _authDataProvider.logout();
}
