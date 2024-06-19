/// Our internal model of any server error
class ServerError {

  /// Error message, so we can provide it to user
  final String message;

  /// Public constructor
  ServerError({required this.message});
}