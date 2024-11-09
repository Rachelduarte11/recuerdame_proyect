import 'package:flutter/material.dart';

class MedicationForm extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final double formHeight = MediaQuery.of(context).size.height * 0.6;
    return  Container(
      height: formHeight,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [

          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Add Button

          ],
        ),
      );
  }

  // Helper for type option buttons
  Widget _buildTypeOption(IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Color(0xFFB2EBF2),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(icon, color: Colors.teal, size: 30),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(color: Colors.teal, fontSize: 12),
        ),
      ],
    );
  }

  // Helper for info columns
  Widget _buildInfoColumn(String title, String info) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          info,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
