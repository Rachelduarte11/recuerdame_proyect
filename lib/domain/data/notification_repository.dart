import '../models/notification_model.dart';
import 'package:flutter/material.dart';

class NotificationRepository {
  // Simulates fetching data from an API or a database
  List<NotificationModel> fetchNotifications() {
    return [
      NotificationModel(
        title: 'Toma De Medicamento',
        description: 'Es hora de tomar tu medicamento: paracetamol 500mg.',
        timeAgo: '2 M',
        icon: Icons.calendar_today,
      ),
      NotificationModel(
        title: 'Scheduled Change',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
        timeAgo: '2 H',
        icon: Icons.calendar_today,
      ),
      NotificationModel(
        title: 'Recordatorio De Reposición',
        description: 'Recuerda reponer el paracetamol, te quedan solo 2 dosis.',
        timeAgo: '3 H',
        icon: Icons.calendar_today,
      ),
      NotificationModel(
        title: 'Ajuste De Horario',
        description:
            'Se recomienda tomar la próxima dosis de metformina antes de las 6:00 pm.',
        timeAgo: '1 D',
        icon: Icons.calendar_today,
      ),
    ];
  }
}
