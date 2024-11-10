import 'package:flutter/material.dart';
import 'package:recuerdame_proyect/utils/color_pallette.dart';

class SearchBarHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      height: 50, // Fixed height to match the provided design
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25), // Rounded corners for the search bar
        color: secondary
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Busca un medicamento',
                hintStyle: TextStyle(
                  color: txtColor.withOpacity(0.6), // Lighter text color for hint
                  fontSize: 16,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Icon(
            Icons.search,
            color: txtColor.withOpacity(0.6), // Icon color matching the hint text
          ),
        ],
      ),
    );
  }
}
