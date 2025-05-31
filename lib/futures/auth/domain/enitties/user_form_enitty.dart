abstract class UserFormEnitty {
  final String email;
  final String password;
  final String? phone;
  final String? name;

  UserFormEnitty({
    required this.email,
    required this.password,
    this.phone,
    this.name,
  });

  Map<String, dynamic> toJson();
}
