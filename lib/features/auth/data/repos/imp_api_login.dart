import 'package:dartz/dartz.dart';
import 'package:doctors_doc/core/apis/dio_error_handel.dart';
import 'package:doctors_doc/core/apis/dio_factory.dart';
import 'package:doctors_doc/core/constants/const_api_values.dart';
import 'package:doctors_doc/core/errors/failuer.dart';
import 'package:doctors_doc/features/auth/data/model/respons_model.dart';
import 'package:doctors_doc/features/auth/domain/enitties/login_user_form_enitty.dart';
import 'package:doctors_doc/features/auth/domain/enitties/respons_enitty.dart';
import 'package:doctors_doc/features/auth/domain/repos/api_login.dart';

class ImpApiLogin implements ApiLogin {
  @override
  Future<Either<Failuer, ResponsEnitty>> login(
    DioFactory dioFactory,
    LoginUserFormEnitty userForm,
  ) async {
    final response = await dioFactory.post(
      endpiont: ConstApiValues.loginEndpoint,
      data: userForm.toJson(),
    );
    if (response != null && response.statusCode == 200) {
      return Right(ResponsModel.fromResponse(response));
    } else {
      return Left(DioErrorHandel.errorSelector(response));
    }
  }
}
