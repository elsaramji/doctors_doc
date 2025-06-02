import 'package:doctors_doc/futures/auth/domain/enitties/register_user_form_enitty.dart';

class RegisterUserFormModel implements RegisterUserFormEnitty {
  String email;
  String password;
  String name;
  String phone;
  RegisterUserFormModel({
    required this.email,
    required this.password,
    required this.name,
    required this.phone,
  });
  @override
  Map<String, dynamic> toJson() => {
    'email': email,
    'password': password,
    "gender": 0,
    "password_confirmation": password,
    'name': name,
    'phone': phone,
  };
}
