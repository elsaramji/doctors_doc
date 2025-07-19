import 'package:dartz/dartz.dart';
import 'package:doctors_doc/core/errors/failuer.dart';
import 'package:doctors_doc/features/auth/domain/entities/client_info_entity.dart';
import 'package:doctors_doc/features/auth/domain/entities/clinet_response_entity.dart';
import 'package:doctors_doc/features/auth/domain/repositories/auth_repos.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_repos_test.mocks.dart';

// Generate a MockClient using the Mockito package.
@GenerateMocks(
  [AuthRepos],
  customMocks: [MockSpec<AuthRepos>(as: #MocksAuthRepos)],
)
// void main() {}
void main() {
  // MocksAuthRepos mockAuthRepos 
  AuthRepos mockAuthRepos = MocksAuthRepos();
  // clientInfoEntity clientInfoEntity
  ClientInfoEntity clientInfoEntity = ClientInfoEntity();
 // String email for test
  String temail = 'email';
  // String password for test
  String tpassword = 'password';

// AuthRepos test mocks group
  group('AuthRepos', () {
    // registerClinet test  mocks
    test('registerClinet', () async {
      // chack if registerClinet return ClinetResponseEntity
      when(
        mockAuthRepos.registerClinet(clientInfoEntity),
      ).thenAnswer((_) async => Right(ClinetResponseEntity()));
      // chack if registerClinet result is a Either
      final result = await mockAuthRepos.registerClinet(clientInfoEntity);
      // chack if registerClinet result is a Either
      expect(result, Right(isA<ClinetResponseEntity>()));
    });
    test('loginClinet', () async {
      when(
        mockAuthRepos.loginClinet(email: temail, password: tpassword),
      ).thenAnswer((_) async => Right(ClinetResponseEntity()));
      final result = await mockAuthRepos.loginClinet(
        email: temail,
        password: tpassword,
      );
      expect(result, isA<Either<Failuer, ClinetResponseEntity>>());
    });
  });
}
