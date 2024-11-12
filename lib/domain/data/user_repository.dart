import '../models/user_model.dart';

class UserRepository {
  UserModel fetchUser()  {
    // Mock data
    return UserModel(
      id: '1',
      name: 'John Doe',
      email: 'johndoe@example.com',
      phone: '+123 567 89000',
      birthDate: '01/01/1990',
      profileImageUrl: 'https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250',
    );
  }
}