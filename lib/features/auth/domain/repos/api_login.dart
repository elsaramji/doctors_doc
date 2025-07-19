import 'package:dartz/dartz.dart';
import 'package:doctors_doc/core/apis/dio_factory.dart';
import 'package:doctors_doc/core/errors/failuer.dart';
import 'package:doctors_doc/features/auth/domain/enitties/login_user_form_enitty.dart';
import 'package:doctors_doc/features/auth/domain/enitties/respons_enitty.dart';

abstract class ApiLogin {
  Future<Either<Failuer, ResponsEnitty>> login(
    DioFactory dioFactory,
    LoginUserFormEnitty loginUserFormEnitty,
  );
}
