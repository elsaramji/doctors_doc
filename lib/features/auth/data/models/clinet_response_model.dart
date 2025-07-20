import 'package:doctors_doc/features/auth/domain/entities/clinet_response_entity.dart';

class ClinetResponseModel extends ClinetResponseEntity {
  ClinetResponseModel({
    required String massage,
    required Map<String, dynamic> data,
    int? code,
    bool? status,
  }) : super(massage: massage, data: data, code: code, status: status);

  
  factory ClinetResponseModel.fromJson(Map<String, dynamic> json) =>
      ClinetResponseModel(massage: json["massage"], data: json["data"]);
  
}
