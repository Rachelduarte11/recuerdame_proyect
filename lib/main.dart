import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:recuerdame_proyect/router/router_generator.dart';
import 'package:recuerdame_proyect/router/router_main.dart';
import 'package:recuerdame_proyect/utils/color_pallette.dart';

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
        initialRoute: AppRoutes.splash, // Set the initial route
        onGenerateRoute: RouteGenerator.generateRoute,
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
