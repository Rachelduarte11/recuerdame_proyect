class UserModel {
  final String id;
  final String name;
  final String email;
  final String phone;
  final String birthDate;
  final String profileImageUrl;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.birthDate,
    required this.profileImageUrl,
  });
}