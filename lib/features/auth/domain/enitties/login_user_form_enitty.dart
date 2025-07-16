abstract class LoginUserFormEnitty {
  final String email;
  final String password;

  LoginUserFormEnitty({required this.email, required this.password});

  toJson();
}
