import 'package:flutter/material.dart';
import 'package:recuerdame_proyect/screens/home_screen.dart';
import 'package:recuerdame_proyect/screens/login_screen.dart';
import 'package:recuerdame_proyect/screens/profile/main_config-profile.dart';
import 'package:recuerdame_proyect/screens/profile/main_profile-screen.dart';
import 'package:recuerdame_proyect/screens/splash_screen.dart';
import 'package:recuerdame_proyect/screens/welcome_screen.dart';

import 'router_main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // You can pass arguments using settings.arguments
    final args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.welcome:
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case AppRoutes.profile:
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case AppRoutes.settings:
        return MaterialPageRoute(builder: (_) => SettingsScreen());
      default:
      // If no route is matched, show an error page
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('404 - Page not found')),
          ),
        );
    }
  }
}
