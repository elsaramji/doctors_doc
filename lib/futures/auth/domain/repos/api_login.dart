import 'package:dartz/dartz.dart';
import 'package:doctors_doc/core/apis/dio_factory.dart';
import 'package:doctors_doc/core/errors/error_model.dart';
import 'package:doctors_doc/futures/auth/domain/enitties/login_user_form_enitty.dart';
import 'package:doctors_doc/futures/auth/domain/enitties/respons_enitty.dart';

abstract class ApiLogin {
  Future<Either<ErrorModel, ResponsEnitty>> login(
    DioFactory dioFactory,
    LoginUserFormEnitty loginUserFormEnitty,
  );
}
