import 'package:dartz/dartz.dart';
import 'package:doctors_doc/core/apis/dio_factory.dart';
import 'package:doctors_doc/core/errors/failuer.dart';
import 'package:doctors_doc/features/auth/domain/enitties/regestir_user_enitty.dart';
import 'package:doctors_doc/features/auth/domain/enitties/respons_enitty.dart';

abstract class ApiRegsiter {
  Future<Either<ResponsEnitty, Failuer>> sginup(
    DioFactory diofactory,
    RegisterUserEntity userForm,
  );
}
