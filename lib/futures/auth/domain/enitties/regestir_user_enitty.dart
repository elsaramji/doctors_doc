abstract class RegisterUserEntity {
  final String email;
  final String password;
  final String confirmPassword;
  final String phone;
  final String name;

  RegisterUserEntity({
    required this.confirmPassword,
    required this.phone,
    required this.email,
    required this.password,
    required this.name,
  });
  toJson();
}
