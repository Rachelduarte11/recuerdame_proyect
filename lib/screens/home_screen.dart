import 'package:flutter/material.dart';
import 'package:recuerdame_proyect/domain/models/medication_model.dart';
import 'package:recuerdame_proyect/utils/color_pallette.dart';
import 'package:recuerdame_proyect/widgets/home/home_calendar.dart';
import 'package:recuerdame_proyect/widgets/home/home_header-section.dart';
import 'package:recuerdame_proyect/widgets/home/home_search-bar.dart';
import 'package:recuerdame_proyect/widgets/home/home_upcoming-medication.dart';
import 'package:recuerdame_proyect/widgets/home/home_user-statics.dart';
import '../widgets/bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  final medications = [MedicationModel(name: "Paracetamol", type: "Tabletas", duration: "1MES", frequency: "Diario")];
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderSection(),
              SizedBox(height: 16),
              SearchBarHome(),
              SizedBox(height: 16),
              StatisticsSection(),
              SizedBox(height: 16),
              UpcomingRemindersSection(medications: medications),
              /**SizedBox(height: 16),
              ScheduleSection(),
              SizedBox(height: 16),
              RemindersSection(),**/
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
