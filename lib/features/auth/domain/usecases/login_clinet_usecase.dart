import 'package:dartz/dartz.dart';
import 'package:doctors_doc/core/errors/failuer.dart';
import 'package:doctors_doc/features/auth/domain/entities/clinet_response_entity.dart';
import 'package:doctors_doc/features/auth/domain/repositories/auth_repos.dart';

class LoginClinetUsecase {
  final AuthRepos authRepos;
  LoginClinetUsecase({required this.authRepos});

  Future<Either<Failuer, ClinetResponseEntity>> call({
    required String email,
    required String password,
  }) => authRepos.loginClinet(email: email, password: password);
}
