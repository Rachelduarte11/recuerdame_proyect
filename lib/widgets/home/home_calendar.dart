import 'package:flutter/material.dart';
import 'package:recuerdame_proyect/utils/color_pallette.dart';

class DateSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(6, (index) {
        return _buildDateCard(day: '10', weekDay: 'LUN');
      }),
    );
  }

  Widget _buildDateCard({required String day, required String weekDay}) {
    return Column(
      children: [
        Text(weekDay, style: TextStyle(color: txtColor)),
        Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.only(top: 4),
          decoration: BoxDecoration(
            color: primary,
            shape: BoxShape.circle,
          ),
          child: Text(
            day,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
