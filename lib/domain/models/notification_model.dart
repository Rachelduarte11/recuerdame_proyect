import 'package:flutter/material.dart';

class NotificationModel {
  final String title;
  final String description;
  final String timeAgo;
  final IconData icon;

  NotificationModel({
    required this.title,
    required this.description,
    required this.timeAgo,
    required this.icon,
  });
}
