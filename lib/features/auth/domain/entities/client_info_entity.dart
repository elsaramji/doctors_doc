class ClientInfoEntity {
  final String? email;
  final String? password;
  final String? confirmPassword;
  final String? phone;
  final String? name;
  final int? gender;

  const ClientInfoEntity({
    this.email,
    this.password,
    this.confirmPassword,
    this.phone,
    this.name,
    this.gender,
  });
}
