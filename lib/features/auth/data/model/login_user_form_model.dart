import 'package:doctors_doc/features/auth/domain/enitties/login_user_form_enitty.dart';

class LoginUserFormModel implements LoginUserFormEnitty {
  final String email;
  final String password;

  LoginUserFormModel({required this.email, required this.password});

  @override
  toJson() {
    return {"email": email, "password": password};
  }
}
