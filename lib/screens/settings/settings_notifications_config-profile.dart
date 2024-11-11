import 'package:flutter/material.dart';
import 'package:recuerdame_proyect/utils/color_pallette.dart';

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({Key? key}) : super(key: key);

  @override
  _NotificationSettingsScreenState createState() => _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState extends State<NotificationSettingsScreen> {
  // State variables to manage switch states
  bool _generalNotifications = true;
  bool _sound = true;
  bool _vibrate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color:primary),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Configuración De Notificaciones',
          style: TextStyle(
            color:primary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildSwitchTile(
              label: 'Notificaciones Generales',
              value: _generalNotifications,
              onChanged: (value) {
                setState(() {
                  _generalNotifications = value;
                });
              },
            ),
            Divider(),
            _buildSwitchTile(
              label: 'Sonido',
              value: _sound,
              onChanged: (value) {
                setState(() {
                  _sound = value;
                });
              },
            ),
            Divider(),
            _buildSwitchTile(
              label: 'Vibrar',
              value: _vibrate,
              onChanged: (value) {
                setState(() {
                  _vibrate = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build switch tiles
  Widget _buildSwitchTile({
    required String label,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            color:txtColor,
            fontSize: 16,
          ),
        ),
        Switch(
          value: value,
          onChanged: onChanged,
          activeColor:primary,
        ),
      ],
    );
  }
}
