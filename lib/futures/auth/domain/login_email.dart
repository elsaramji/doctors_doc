

import 'package:dartz/dartz.dart';
import 'package:doctors_doc/futures/auth/domain/errors/errors.dart';

abstract class LoginEmail {
  /// Attempts to log in a user with the provided email and password.
  ///
  /// Returns an [Either] containing an [AuthError] on failure or a [String]
  /// representing the authentication token on success.
  ///
  /// Throws an exception if the email or password is invalid.
  Future<Either<AuthError, String>> login(String email, String password);
}