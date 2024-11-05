import 'package:flutter/material.dart';
import '../../domain/models/notification_model.dart';

class NotificationItem extends StatelessWidget {
  final NotificationModel notification;

  NotificationItem({required this.notification});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      color: Colors.grey[100],
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.teal,
            child: Icon(notification.icon, color: Colors.white, size: 20),
            radius: 24,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notification.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  notification.description,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(width: 8),
          Text(
            notification.timeAgo,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
