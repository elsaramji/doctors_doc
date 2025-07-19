import 'package:dartz/dartz.dart';
import 'package:doctors_doc/core/errors/failuer.dart';
import 'package:doctors_doc/features/auth/domain/entities/client_info_entity.dart';
import 'package:doctors_doc/features/auth/domain/entities/clinet_response_entity.dart';

abstract class AuthRepos {
  Future<Either<Failuer, ClinetResponseEntity>> registerClinet(
    ClientInfoEntity clientInfoEntity,
  );

  Future<Either<Failuer, ClinetResponseEntity>> loginClinet({
    required String email,
    required String password,
  });
}
