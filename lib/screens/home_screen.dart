import 'package:flutter/material.dart';
import 'package:recuerdame_proyect/domain/data/medication_repository.dart';
import 'package:recuerdame_proyect/domain/models/medication_model.dart';
import 'package:recuerdame_proyect/utils/color_pallette.dart';
import 'package:recuerdame_proyect/widgets/home/home_search-bar.dart';
import 'package:recuerdame_proyect/widgets/home/home_upcoming-medication.dart';
import 'package:recuerdame_proyect/widgets/home/home_user-statics.dart';

class HomeScreen extends StatelessWidget {
  final MedicationRepository _medicationRepository = MedicationRepository();


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
              StatisticsSection(),
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage('https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250'), // Placeholder image
              radius: 24,
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Buenas Tardes',
                  style: TextStyle(
                    color: primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'John Doe',
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
