import 'package:dartz/dartz.dart';
import 'package:doctors_doc/core/apis/dio_factory.dart';
import 'package:doctors_doc/core/errors/error_model.dart';
import 'package:doctors_doc/futures/auth/domain/enitties/regestir_user_enitty.dart';
import 'package:doctors_doc/futures/auth/domain/enitties/respons_enitty.dart';

abstract class ApiRegsiter {
  Future<Either<ResponsEnitty, ErrorModel>> sginup(
    DioFactory diofactory,
    RegisterUserEntity userForm,
  );
}
