import 'package:flutter/material.dart';
import 'package:recuerdame_proyect/domain/models/medication_model.dart';
import 'package:recuerdame_proyect/utils/color_pallette.dart';

class UpcomingRemindersSection extends StatelessWidget {
  final List<MedicationModel> medications;

  const UpcomingRemindersSection({Key? key, required this.medications}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Próximos Recordatorios',
          style: TextStyle(
            color: txtColor,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: medications.map((medication) => ReminderCard()).toList(),
          ),
        ),
      ],
    );
  }
}

class ReminderCard extends StatelessWidget {
  const ReminderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220, // Fixed width to match the design
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(right: 8), // Space between cards in the scrollable row
      decoration: BoxDecoration(
        color: buttons.withOpacity(0.3), // Light blue background color for the card
        borderRadius: BorderRadius.circular(16), // Rounded corners for the card
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Date Container
          Container(
            width: 60,
            padding: EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: buttons, // Slightly darker blue for the date box
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '12',
                  style: TextStyle(
                    color: txtColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'JUEVES',
                  style: TextStyle(
                    color: txtColor,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 12),
          // Medication Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '9:00 AM',
                  style: TextStyle(
                    color: txtColor.withOpacity(0.8),
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Simvastatina',
                  style: TextStyle(
                    color: txtColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Simvastatina 20 mg',
                  style: TextStyle(
                    color: txtColor.withOpacity(0.6),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          // Options Icon
          Icon(
            Icons.more_vert,
            color: txtColor.withOpacity(0.7),
            size: 20,
          ),
        ],
      ),
    );
  }
}