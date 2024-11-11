import 'package:flutter/material.dart';
import 'package:recuerdame_proyect/utils/color_pallette.dart';

class ProfileOptionList extends StatelessWidget {
  const ProfileOptionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileOptionItem(
          icon: Icons.person,
          label: "Perfil",
          onTap: () {
            // Handle navigation to "Perfil" screen
          },
        ),
        ProfileOptionItem(
          icon: Icons.settings,
          label: "Configuración",
          onTap: () {
            // Handle navigation to "Configuración" screen
          },
        ),
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


class ProfileOptionItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const ProfileOptionItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: buttons,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color:primary,
                size: 24,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  color: txtColor,
                  fontSize: 16,
                ),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: txtColor.withOpacity(0.5),
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}


