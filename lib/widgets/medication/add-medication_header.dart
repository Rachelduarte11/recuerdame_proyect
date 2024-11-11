import 'package:flutter/material.dart';

class MedicationHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Colors.teal,
        image: DecorationImage(
          image: AssetImage("assets/images/medicamentos.png"), // Replace with actual image URL or asset
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.topCenter,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Añadir Receta',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  /**IconButton(
                    icon: Icon(Icons.search, color: Colors.white),
                    onPressed: () {},
                  ),**/
                  /**IconButton(
                    icon: Icon(Icons.settings, color: Colors.white),
                    onPressed: () {},
                  ),**/
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
