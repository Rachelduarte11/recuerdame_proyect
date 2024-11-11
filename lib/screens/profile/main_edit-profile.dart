import 'package:flutter/material.dart';
import 'package:recuerdame_proyect/utils/color_pallette.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: primary),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Perfil',
          style: TextStyle(
            color: primary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: primary),
            onPressed: () {
              // Handle settings button tap
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Picture with Edit Icon
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('https://example.com/profile.jpg'),
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
            // Full Name Field
            _buildProfileField(label: 'Nombre Completo', value: 'John Doe'),
            SizedBox(height: 12),
            // Phone Field
            _buildProfileField(label: 'Celular', value: '+123 567 89000'),
            SizedBox(height: 12),
            // Email Field
            _buildProfileField(label: 'Email', value: 'johndoe@example.com'),
            SizedBox(height: 12),
            // Birth Date Field
            _buildProfileField(label: 'Fecha De Nacimiento', value: 'DD / MM / YYYY'),
            SizedBox(height: 24),
            // Update Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle update action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primary,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Text(
                  'Actualizar',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to create profile fields
  Widget _buildProfileField({required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: txtColor.withOpacity(0.6),
            fontSize: 14,
          ),
        ),
        SizedBox(height: 4),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: BoxDecoration(
            color: secondary,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            value,
            style: TextStyle(
              color: txtColor,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
