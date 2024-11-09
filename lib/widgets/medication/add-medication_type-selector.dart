import 'package:flutter/material.dart';

class MedicationTypeSelector extends StatelessWidget {
  final List<Map<String, dynamic>> medicationTypes = [
    {'icon': Icons.tablet, 'label': 'Tabletas'},
    {'icon': Icons.local_hospital, 'label': 'Tópicos'},
    {'icon': Icons.vaccines, 'label': 'Inyectables'},
    {'icon': Icons.medication, 'label': 'Cápsulas'},
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: medicationTypes.map((type) {
        return _buildTypeCard(type['icon'], type['label']);
      }).toList(),
    );
  }

  Widget _buildTypeCard(IconData icon, String label) {
    return Container(
      width: 80,
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.teal[50],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.teal, size: 28),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(color: Colors.teal, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
