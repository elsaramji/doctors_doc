import 'package:dartz/dartz.dart';
import 'package:doctors_doc/core/errors/failuer.dart';
import 'package:doctors_doc/features/auth/domain/entities/client_info_entity.dart';
import 'package:doctors_doc/features/auth/domain/entities/clinet_response_entity.dart';
import 'package:doctors_doc/features/auth/domain/usecases/rigseter_clinet_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../repositories/auth_repos_test.mocks.dart';

void main() {
  MockAuthRepos mockAuthRepos = MockAuthRepos();

  ClientInfoEntity clientInfoEntity = ClientInfoEntity();
  test('RigseterClinetUseCase', () async {
    when(mockAuthRepos.registerClinet(clientInfoEntity)).thenAnswer(
      (_) async => right(ClinetResponseEntity(massage: 'massage', data: {})),
    );

    RigseterClinetUsecase rigseterClinetUsecase = RigseterClinetUsecase(
      authRepos: mockAuthRepos,
    );

    final result = await rigseterClinetUsecase(
      clientInfoEntity: clientInfoEntity,
    );

    expect(result, isA<Right<Failuer, ClinetResponseEntity>>());
  });
}
