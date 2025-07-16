
import 'package:doctors_doc/features/auth/domain/enitties/regestir_user_enitty.dart';

class RegisterUserFormModel implements RegisterUserEntity {
  String email;
  String password;
  String confirmPassword;
  String name;
  String phone;
  RegisterUserFormModel({
    required this.email,
    required this.password,
    required this.confirmPassword,
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
