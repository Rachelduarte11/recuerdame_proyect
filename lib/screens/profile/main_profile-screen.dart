import 'package:flutter/material.dart';
import 'package:recuerdame_proyect/utils/color_pallette.dart';
import 'package:recuerdame_proyect/widgets/bottom_navigation.dart';
import 'package:recuerdame_proyect/widgets/profile/profile_header.dart';
import 'package:recuerdame_proyect/widgets/profile/profile_options-list.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color:primary),
          onPressed: () => Navigator.of(context).pop(),
        ),
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
              profileImageUrl: 'https://example.com/profile.jpg',
            ),
            SizedBox(height: 24),
            ProfileOptionList(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation()
    );
  }
}
