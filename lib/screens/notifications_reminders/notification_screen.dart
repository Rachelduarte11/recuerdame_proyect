// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:recuerdame_proyect/domain/data/notification_repository.dart';

import '../../widgets/notifications_reminders/notification_list.dart';

class NotificationPage extends StatelessWidget {
  final NotificationRepository _notificationRepository =
      NotificationRepository();

  @override
  Widget build(BuildContext context) {
    final notifications = _notificationRepository.fetchNotifications();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.teal),
          onPressed: () {},
        ),
        title: Text(
          'Notificaciones',
          style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("News", style: TextStyle(color: Colors.grey)),
                SizedBox(width: 4),
                CircleAvatar(radius: 4, backgroundColor: Colors.teal),
              ],
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: NotificationList(notifications: notifications),
    );
  }
}
