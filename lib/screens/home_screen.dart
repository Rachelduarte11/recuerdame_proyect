import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recuerdame_proyect/api/auth_provider.dart';
import 'package:recuerdame_proyect/domain/data/medication_repository.dart';
import 'package:recuerdame_proyect/domain/data/statics_repository.dart';
import 'package:recuerdame_proyect/domain/data/user_repository.dart';
import 'package:recuerdame_proyect/domain/models/medication_model.dart';
import 'package:recuerdame_proyect/utils/color_pallette.dart';
import 'package:recuerdame_proyect/widgets/home/home_search-bar.dart';
import 'package:recuerdame_proyect/widgets/home/home_upcoming-medication.dart';
import 'package:recuerdame_proyect/widgets/home/home_user-statics.dart';

class HomeScreen extends ConsumerWidget {
  final MedicationRepository _medicationRepository = MedicationRepository();
  final StatisticsRepository _statsRepo = StatisticsRepository();

  //Navigation
  void _navigateToNotificationView(BuildContext c) {
    Navigator.pushNamed(c, "/notifications");
  }

  void _navigateToSettingsView(BuildContext c) {
    Navigator.pushNamed(c, "/settings");
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInfo = ref.watch(authStateProvider); // Watch the user auth state
    final medication = _medicationRepository.fetchMedications();
    final stats = _statsRepo.fetchStatistics();

    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeaderSection(context, userInfo),
              SizedBox(height: 16),
              SearchBarHome(),
              SizedBox(height: 16),
              StatisticsSection(stats: stats),
              SizedBox(height: 16),
              UpcomingRemindersSection(medications: medication),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderSection(BuildContext context, Map<String, String?> userInfo) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(userInfo['profileImageUrl'] ?? 'https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250'), // Use a default if null
              radius: 24,
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hola, ',
                  style: TextStyle(
                    color: primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  userInfo['nombre'] ?? 'Usuario',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: txtColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.notifications, color: secondary),
              onPressed: () {
                _navigateToNotificationView(context);
              },
            ),
          ],
        ),
      ],
    );
  }
}
