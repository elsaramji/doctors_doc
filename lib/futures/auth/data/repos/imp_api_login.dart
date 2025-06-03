import 'package:dartz/dartz.dart';
import 'package:doctors_doc/core/apis/dio_error_handel.dart';
import 'package:doctors_doc/core/apis/dio_factory.dart';
import 'package:doctors_doc/core/const/const_api_values.dart';
import 'package:doctors_doc/core/errors/error_model.dart';
import 'package:doctors_doc/futures/auth/data/model/respons_model.dart';
import 'package:doctors_doc/futures/auth/domain/enitties/login_user_form_enitty.dart';
import 'package:doctors_doc/futures/auth/domain/enitties/respons_enitty.dart';
import 'package:doctors_doc/futures/auth/domain/repos/api_login.dart';

class ImpApiLogin implements ApiLogin {
  @override
  Future<Either<ErrorModel, ResponsEnitty>> login(
    
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
