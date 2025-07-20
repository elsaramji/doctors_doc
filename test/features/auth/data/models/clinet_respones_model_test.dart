import 'package:doctors_doc/features/auth/data/models/clinet_response_model.dart';
import 'package:doctors_doc/features/auth/domain/entities/clinet_response_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  ClinetResponseModel clinetResponseModel = ClinetResponseModel(
    massage: 'massage',
    data: {},
  );

  test('clinetResponseModel must be a ClinetResponseEntity', () {
    // assert
    expect(clinetResponseModel, isA<ClinetResponseEntity>());
  });

  group('Json Convert Test', () {
    test('fromJson must be a ClinetResponseModel', () {
      // arrange
      // mocks data map
      Map<String, dynamic> data = {};
      // mocks Response json
      Map<String, dynamic> json =
          {'massage': 'massage', 'data': data} as Map<String, dynamic>;
      // final result test
      final result = ClinetResponseModel.fromJson(json);
      // assert
      expect(result, isA<ClinetResponseModel>());
    });
  });
}
