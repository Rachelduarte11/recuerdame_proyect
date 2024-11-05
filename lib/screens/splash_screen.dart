import 'package:flutter/material.dart';
import 'package:recuerdame_proyect/utils/color_pallette.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary, // Set your desired background color here
      body: Center(
        child: Image.asset(
            'assets/logos/logo-splash.png'), // Replace with your image asset
      ),
    );
  }
}
