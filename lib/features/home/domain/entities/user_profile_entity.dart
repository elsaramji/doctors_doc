abstract class UserProfileEntity {
  final String id;
  final String name;
  final String email;
  final String phone;
  final String imageUrl;

  UserProfileEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.imageUrl,
  });
}