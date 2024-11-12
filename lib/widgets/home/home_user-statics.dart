import 'package:flutter/material.dart';
import 'package:recuerdame_proyect/domain/models/statics_model.dart';
import 'package:recuerdame_proyect/utils/color_pallette.dart';


class StatisticsSection extends StatefulWidget {
  final StatisticsModel stats;

  StatisticsSection({required this.stats});

  @override
  _StatisticsSectionState createState() => _StatisticsSectionState();
}

class _StatisticsSectionState extends State<StatisticsSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildCompletedDaysStatCard('Días cumpliendo', widget.stats.daysCompleted, Icons.calendar_today),
        SizedBox(width: 8),
        _buildPrescriptionsStatCard('Recetas', widget.stats.prescriptions, Icons.receipt_long),
      ],
    );
  }

  Widget _buildCompletedDaysStatCard(String title, int count, IconData icon) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        decoration: BoxDecoration(
          color: primary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(icon, color: Colors.white, size: 24),
                SizedBox(width: 8),
                Text(
                  "$count",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPrescriptionsStatCard(String title, int count, IconData icon) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        decoration: BoxDecoration(
          color: third,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: Colors.white, size: 64),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  "$count",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
