
import 'package:dartz/dartz.dart';
import 'package:doctors_doc/futures/auth/domain/errors/errors.dart';
import 'package:doctors_doc/futures/auth/domain/regesiter_email.dart';

class RegisterApiImpl implements RegisterEmail {
  @override
  Future<Either<AuthError, String>> register(
    String email,
    String password,
    String phone,
  ) {
    // Simulate a successful registration
    return Future.value(Right("Registration successful"));
  }
}
