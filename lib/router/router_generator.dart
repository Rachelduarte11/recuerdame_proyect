import 'package:flutter/material.dart';
import 'package:recuerdame_proyect/screens/home_screen.dart';
import 'package:recuerdame_proyect/screens/login_screen.dart';
import 'package:recuerdame_proyect/screens/medication/add_medication.dart';
import 'package:recuerdame_proyect/screens/notifications_reminders/notification_screen.dart';
import 'package:recuerdame_proyect/screens/page_views.dart';
import 'package:recuerdame_proyect/screens/profile/main_edit-profile.dart';
import 'package:recuerdame_proyect/screens/profile/main_profile-screen.dart';
import 'package:recuerdame_proyect/screens/settings/settings_notifications_config-profile.dart';
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
      case AppRoutes.mainView:
        return MaterialPageRoute(builder: (_) => MainPageView());
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case AppRoutes.profile:
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case AppRoutes.profileEdit:
        return MaterialPageRoute(builder: (_) => EditProfileScreen());
      case AppRoutes.settings:
        return MaterialPageRoute(builder: (_) => NotificationSettingsScreen());
      case AppRoutes.notifications:
        return MaterialPageRoute(builder: (_) => NotificationPage());
      case AppRoutes.addMedication:
        return MaterialPageRoute(builder: (_) => AddMedicationPage());
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
