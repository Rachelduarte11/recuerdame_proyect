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
    this.profileImageUrl = "https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250",
  });
}