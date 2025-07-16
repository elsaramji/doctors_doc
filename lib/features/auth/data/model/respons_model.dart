import 'package:dio/dio.dart';
import 'package:doctors_doc/features/auth/domain/enitties/respons_enitty.dart';

class ResponsModel implements ResponsEnitty {
  @override
  Map<String, dynamic>? data;
  @override
  String? message;
  @override
  int? statusCode;
  ResponsModel({this.data, this.message, this.statusCode});

  factory ResponsModel.fromResponse(Response response) {
    return ResponsModel(
      data: response.data,
      message: response.statusMessage,
      statusCode: response.statusCode,
    );
  }
}
