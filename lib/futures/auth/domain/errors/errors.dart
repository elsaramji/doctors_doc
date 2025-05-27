abstract class AuthError {
  final String message;
  final String? code;
  final String? details;
  AuthError(this.message, {this.code, this.details});
}
