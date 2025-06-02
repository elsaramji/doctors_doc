import 'package:bloc/bloc.dart';
import 'package:doctors_doc/core/apis/dio_factory.dart';
import 'package:doctors_doc/core/di/get_it_injection.dart';
import 'package:doctors_doc/core/errors/error_model.dart';
import 'package:doctors_doc/futures/auth/data/model/login_user_form_model.dart';
import 'package:doctors_doc/futures/auth/data/repos/imp_api_login.dart';
import 'package:doctors_doc/futures/auth/domain/enitties/respons_enitty.dart';
import 'package:meta/meta.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit() : super(SigninInitial());

  login({required String email, required String password}) async {
    emit(SigninLoading());
    final response = await ImpApiLogin().login(
      LoginUserFormModel(email: email, password: password),
      getIt<DioFactory>(),
    );
    response.fold((l) => emit(SigninError(l)), (r) => emit(SigninSuccess(r)));
  }
}
