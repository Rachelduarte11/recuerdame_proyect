import 'package:flutter/material.dart';
import 'package:recuerdame_proyect/domain/data/medication_repository.dart';
import 'package:recuerdame_proyect/domain/data/statics_repository.dart';
import 'package:recuerdame_proyect/domain/data/user_repository.dart';
import 'package:recuerdame_proyect/domain/models/medication_model.dart';
import 'package:recuerdame_proyect/utils/color_pallette.dart';
import 'package:recuerdame_proyect/widgets/home/home_search-bar.dart';
import 'package:recuerdame_proyect/widgets/home/home_upcoming-medication.dart';
import 'package:recuerdame_proyect/widgets/home/home_user-statics.dart';

class HomeScreen extends StatelessWidget {
  final MedicationRepository _medicationRepository = MedicationRepository();
  final UserRepository _userRepository = UserRepository();
  final StatisticsRepository _statsRepo = StatisticsRepository();


  //Navigation
  void _navigateToNotificationView(BuildContext c) {
    Navigator.pushNamed(c, "/notifications");
  }

  void _navigateToSettingsView(BuildContext c) {
    Navigator.pushNamed(c, "/settings");
  }
  
  @override
  Widget build(BuildContext context) {
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
              _buildHeaderSection(context),
              SizedBox(height: 16),
              SearchBarHome(),
              SizedBox(height: 16),
              StatisticsSection(stats: stats,),
              SizedBox(height: 16),
              UpcomingRemindersSection(medications: medication),
              /**SizedBox(height: 16),
              ScheduleSection(),
              SizedBox(height: 16),
              RemindersSection(),**/
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildHeaderSection(BuildContext c) {
    final userInfo = _userRepository.fetchUser();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(userInfo.profileImageUrl), // Placeholder image
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
                  userInfo.name,
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
              onPressed: () {_navigateToNotificationView(c);},
            ),
            /**IconButton(
              icon: Icon(Icons.settings, color: secondary),
              onPressed: () {_navigateToSettingsView(c);},
            ),**/
          ],
        ),
      ],
    );
  }
}
