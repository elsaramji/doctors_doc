import 'package:dartz/dartz.dart';
import 'package:doctors_doc/futures/auth/domain/errors/errors.dart';

abstract class RegisterEmail {
  /// Attempts to register a user with the provided email and password.
  ///
  /// Returns an [Either] containing an [AuthError] on failure or a [String]
  /// representing the success message on success.
  ///
  /// Throws an exception if the email or password is invalid.
  Future<Either<AuthError, String>> register(
    String email,
    String password,
    String phone,
  );
}
