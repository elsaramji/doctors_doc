import 'package:doctors_doc/features/auth/data/models/clinet_info_model.dart';
import 'package:doctors_doc/features/auth/domain/entities/client_info_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  ClinetInfoModel clinetInfoModel = ClinetInfoModel(
    email: 'email',
    password: 'password',
    name: 'name',
    phone: 'phone',
    gender: 0,
  );

  test('clinetInfoModel must be a ClinetInfoEntity', () {
    // assert
    expect(clinetInfoModel, isA<ClientInfoEntity>());
  });

  group('Json Convert Test', () {
    test('fromJson must be a ClinetInfoModel', () {
      // arrange
      // mocks Info json
      Map<String, dynamic> json = {
        'email': 'email',
        'password': 'password',
        'name': 'name',
        'phone': 'phone',
        'gender': 0,
      };
      // final result test
      final result = ClinetInfoModel.fromJson(json);
      // assert
      expect(result, isA<ClinetInfoModel>());
    });
    test('toJson must be a Map<String, dynamic>', () {
      // arrange
      // final result test
      final result = clinetInfoModel.toJson();
      // assert
      expect(result, isA<Map<String, dynamic>>());
    });
  });
}
