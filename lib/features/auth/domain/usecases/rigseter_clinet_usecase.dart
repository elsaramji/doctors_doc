import 'package:dartz/dartz.dart';
import 'package:doctors_doc/core/errors/failuer.dart';
import 'package:doctors_doc/features/auth/domain/entities/client_info_entity.dart';
import 'package:doctors_doc/features/auth/domain/entities/clinet_response_entity.dart';
import 'package:doctors_doc/features/auth/domain/repositories/auth_repos.dart';

class RigseterClinetUsecase {
  final AuthRepos authRepos;
  RigseterClinetUsecase({required this.authRepos});

  Future<Either<Failuer, ClinetResponseEntity>> call({
    required ClientInfoEntity clientInfoEntity,
  }) => authRepos.registerClinet(clientInfoEntity);
}
