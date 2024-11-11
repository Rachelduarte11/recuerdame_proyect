import 'package:flutter/material.dart';
import 'package:recuerdame_proyect/utils/color_pallette.dart';

class ProfileHeader extends StatelessWidget {
  final String userName;
  final String profileImageUrl;

  const ProfileHeader({
    Key? key,
    required this.userName,
    required this.profileImageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(profileImageUrl),
            ),
            Positioned(
              bottom: 4,
              right: 4,
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: primary,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 16,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 12),
        Text(
          userName,
          style: TextStyle(
            color: txtColor,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
