import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:recuerdame_proyect/screens/home_screen.dart';
import 'package:recuerdame_proyect/screens/login_screen.dart';
import 'package:recuerdame_proyect/screens/medication/add_medication.dart';
import 'package:recuerdame_proyect/screens/notifications_reminders/notification_screen.dart';
import 'package:recuerdame_proyect/screens/profile/main_config-profile.dart';
import 'package:recuerdame_proyect/screens/profile/main_edit-profile.dart';
import 'package:recuerdame_proyect/screens/profile/main_notifications_config-profile.dart';
import 'package:recuerdame_proyect/screens/profile/main_profile-screen.dart';
import 'package:recuerdame_proyect/screens/splash_screen.dart';
import 'package:recuerdame_proyect/screens/welcome_screen.dart';
import 'package:recuerdame_proyect/utils/color_pallette.dart';
import 'package:recuerdame_proyect/widgets/bottom_navigation.dart';

import 'screens/login_forgot-password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CalendarControllerProvider(
      controller: EventController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ChangePasswordScreen(),
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: "LeagueSpartan",
          primaryColor: primary,
          scaffoldBackgroundColor: background,
          colorScheme: ColorScheme(
            primary: primary,
            secondary: background.withOpacity(0.4),
            surface: primary,
            error: negativeColor,
            onPrimary: Colors.white,
            onSecondary: txtColor,
            onSurface: txtColor,
            onBackground: txtColor,
            onError: Colors.white,
            brightness: Brightness.light,
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: primary,
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: third,
          ),
          buttonTheme: ButtonThemeData(
            buttonColor: third,
            textTheme: ButtonTextTheme.primary,
          ),
        ),
      ),
    );
  }
}
