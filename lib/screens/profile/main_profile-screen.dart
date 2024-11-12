import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recuerdame_proyect/api/auth_provider.dart';
import 'package:recuerdame_proyect/utils/color_pallette.dart';
import 'package:recuerdame_proyect/widgets/profile/profile_header.dart';
import 'package:recuerdame_proyect/widgets/profile/profile_options-list.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  void _navigateToEditProfile(BuildContext context) {
    Navigator.pushNamed(context, "/profile/edit");
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              profileImageUrl:
              'https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250',
            ),
            SizedBox(height: 24),
            _buildProfileOptionList(context, ref),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileOptionList(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ProfileOptionItem(
          icon: Icons.person,
          label: "Perfil",
          onTap: () {
            _navigateToEditProfile(context);
          },
        ),
        ProfileOptionItem(
          icon: Icons.logout,
          label: "Salir",
          onTap: () {
            _handleLogout(ref, context);
          },
        ),
      ],
    );
  }

  void _handleLogout(WidgetRef ref, BuildContext context) {
    // Clear the authentication state
    ref.read(authStateProvider.notifier).state = {};

    // Navigate to the login screen
    Navigator.pushReplacementNamed(context, "/login");
  }
}
