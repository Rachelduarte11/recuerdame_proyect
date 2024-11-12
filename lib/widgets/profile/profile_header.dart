import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recuerdame_proyect/api/auth_provider.dart';
import 'package:recuerdame_proyect/utils/color_pallette.dart';

class ProfileHeader extends ConsumerWidget {
  final String profileImageUrl;

  const ProfileHeader({
    Key? key,
    required this.profileImageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Access the authStateProvider to retrieve the user name
    final userName = ref.watch(authStateProvider)['email'] ?? 'Guest';

    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(profileImageUrl),
            ),
            // Uncomment this section if you want the edit icon overlay
            /*
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
            */
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
