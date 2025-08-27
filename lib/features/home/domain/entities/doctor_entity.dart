abstract class DoctorEntity {
  final String name;
  final String image;
  final String specialty;
  final String degree;
  final String address;
  final String phone;
  final String email;
  final String price;
  final String startTime;
  final String endTime;

  DoctorEntity({
    required this.name,
    required this.image,
    required this.specialty,
    required this.degree,
    required this.address,
    required this.phone,
    required this.email,
    required this.price,
    required this.startTime,
    required this.endTime,
  });
}
