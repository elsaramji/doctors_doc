import 'package:dartz/dartz.dart';
import 'package:doctors_doc/core/errors/failuer.dart';
import 'package:doctors_doc/features/auth/domain/entities/clinet_response_entity.dart';
import 'package:doctors_doc/features/auth/domain/usecases/login_clinet_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../repositories/auth_repos_test.mocks.dart';

void main() {
  MockAuthRepos mockAuthRepos = MockAuthRepos();

  test('loginClinetUseCase', () async {
    when(
      mockAuthRepos.loginClinet(email: 'email', password: 'password'),
    ).thenAnswer((_) async => right(ClinetResponseEntity(massage: 'massage',data: {},)));

    LoginClinetUsecase loginClinetUsecase = LoginClinetUsecase(
      authRepos: mockAuthRepos,
    );

    final result = await loginClinetUsecase(
      email: 'email',
      password: 'password',
    );

    expect(result, isA<Right<Failuer, ClinetResponseEntity>>());
  });
}
