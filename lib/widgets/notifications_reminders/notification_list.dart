import 'package:flutter/material.dart';
import '../../domain/models/notification_model.dart';
import 'notification_item.dart';

class NotificationList extends StatelessWidget {
  final List<NotificationModel> notifications;

  NotificationList({required this.notifications});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildTabButton('Hoy', true),
              TextButton(
                onPressed: () {},
                child: Text('Mark all', style: TextStyle(color: Colors.teal)),
              ),
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            final notification = notifications[index];
            return NotificationItem(notification: notification);
          },
        ),
        Divider(height: 30, thickness: 2, color: Colors.grey[200]),
        _buildTabButton('Ayer', false),
      ],
    );
  }

  Widget _buildTabButton(String text, bool isActive) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: isActive ? Colors.grey[200] : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isActive ? Colors.teal : Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
