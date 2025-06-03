import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:doctors_doc/core/apis/dio_factory.dart';
import 'package:doctors_doc/core/errors/error_model.dart';
import 'package:doctors_doc/futures/auth/data/model/respons_model.dart';
import 'package:doctors_doc/futures/auth/domain/enitties/regestir_user_enitty.dart';
import 'package:doctors_doc/futures/auth/domain/enitties/respons_enitty.dart';
import 'package:doctors_doc/futures/auth/domain/repos/api_regsiter.dart';

class ImpApiRegsiter implements ApiRegsiter {
  @override
  Future<Either<ResponsEnitty, ErrorModel>> sginup(
    DioFactory diofactory,
    RegisterUserEntity userForm,
  ) async {
    Response? respons = await diofactory.post(
      endpiont: "/auth/register",
      data: userForm.toJson(),
    );
    if (respons != null && respons.statusCode == 200) {
      return left(ResponsModel.fromResponse(respons));
    } else {
      return right(ErrorModel(message: "error"));
    }
  }
}
