import 'package:doctors_doc/features/auth/domain/entities/client_info_entity.dart';

class ClinetInfoModel extends ClientInfoEntity {
  ClinetInfoModel({
    required String email,
    required String password,
    required String name,
    required String phone,
    int? gender,
  }) : super(
         email: email,
         password: password,
         name: name,
         phone: phone,
         gender: gender,
       );

  factory ClinetInfoModel.fromJson(Map<String, dynamic> json) =>
      ClinetInfoModel(
        email: json["email"],
        password: json["password"],
        name: json["name"],
        phone: json["phone"],
        gender: json["gender"],
      );

  Map<String, dynamic> toJson() => {
    "email": email,
    "password": password,
    "name": name,
    "phone": phone,
    "gender": gender,
  };
}
