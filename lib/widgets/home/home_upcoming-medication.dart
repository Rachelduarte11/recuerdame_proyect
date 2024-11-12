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
          'Medicacion para Hoy!',
          style: TextStyle(
            color: txtColor,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: medications.map((medication) => ReminderCard(medication: medication,)).toList(),
          ),
        ),
      ],
    );
  }
}

class ReminderCard extends StatelessWidget {
  final MedicationModel medication ;
  const ReminderCard({Key? key, required this.medication }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, // Fixed width to match the design
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(top: 8), // Space between cards in the scrollable row
      decoration: BoxDecoration(
        color: buttons.withOpacity(0.3), // Light blue background color for the card
        borderRadius: BorderRadius.circular(16), // Rounded corners for the card
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Date Container
          Container(
            width: 70,
            padding: EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: buttons, // Slightly darker blue for the date box
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  medication.hour_to_take,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: txtColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
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
                  medication.frequency,
                  style: TextStyle(
                    color: txtColor.withOpacity(0.8),
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                 medication.description,
                  style: TextStyle(
                    color: txtColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          // Options Icon
          /**Icon(
            Icons.more_vert,
            color: txtColor.withOpacity(0.7),
            size: 20,
          ),**/
        ],
      ),
    );
  }
}