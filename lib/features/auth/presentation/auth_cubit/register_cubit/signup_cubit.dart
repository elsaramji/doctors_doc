import 'package:bloc/bloc.dart';
import 'package:doctors_doc/core/apis/dio_factory.dart';
import 'package:doctors_doc/core/di/get_it_injection.dart';
import 'package:doctors_doc/core/errors/error_model.dart';
import 'package:doctors_doc/features/auth/data/model/register_user_form_model.dart';
import 'package:doctors_doc/features/auth/data/repos/imp_api_regsiter.dart';
import 'package:doctors_doc/features/auth/domain/enitties/respons_enitty.dart';
import 'package:meta/meta.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());
  Future<void> signupUser({
    required String email,
    required String password,
    required String name,
    required String phone,
  }) async {
    emit(SignupLoading());
    final response = await ImpApiRegsiter().sginup(
      getIt<DioFactory>(),
      RegisterUserFormModel(
        email: email,
        password: password,
        name: name,
        phone: phone,
        confirmPassword: password,
      ),
    );
    response.fold((l) => emit(SignupSuccess(l)), (r) => emit(SignupError(r)));
  }
}
