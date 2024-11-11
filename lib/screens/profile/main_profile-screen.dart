import 'package:flutter/material.dart';
import 'package:recuerdame_proyect/utils/color_pallette.dart';
import 'package:recuerdame_proyect/widgets/bottom_navigation.dart';
import 'package:recuerdame_proyect/widgets/profile/profile_header.dart';
import 'package:recuerdame_proyect/widgets/profile/profile_options-list.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  
  void _navigateToEditProfile(BuildContext c) {
    Navigator.pushNamed(c, "/profile/edit");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Mi Perfil',
          style: TextStyle(
            color: primary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ProfileHeader(
              userName: 'John Doe',
              profileImageUrl: 'https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250',
            ),
            SizedBox(height: 24),
            _buildProfileOptionList(context),
          ],
        ),
      ),
    );
  }
  
  Widget _buildProfileOptionList(BuildContext c) {
    return Column(
      children: [
        ProfileOptionItem(
          icon: Icons.person,
          label: "Perfil",
          onTap: () {
            _navigateToEditProfile(c);
          },
        ),
        /**ProfileOptionItem(
            icon: Icons.settings,
            label: "Configuración",
            onTap: () {
            // Handle navigation to "Configuración" screen
            },
            ),**/
        ProfileOptionItem(
          icon: Icons.logout,
          label: "Salir",
          onTap: () {
            // Handle logout functionality
          },
        ),
      ],
    );
  }
}



