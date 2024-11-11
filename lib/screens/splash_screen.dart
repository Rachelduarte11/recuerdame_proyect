import 'package:flutter/material.dart';
import 'package:recuerdame_proyect/utils/color_pallette.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Schedule the function to run after the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
        Future.delayed(Duration(seconds: 3), () {
        _navigateToNextScreen();
        });
    });
  }

  void _navigateToNextScreen() {
    // Implement your logic to navigate to the next screen
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary, // Set your desired background color here
      body: Center(
        child: Image.asset('assets/logos/logo-splash.png'), // Replace with your image asset
      ),
    );
  }
}
