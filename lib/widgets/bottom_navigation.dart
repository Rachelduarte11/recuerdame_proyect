import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recuerdame_proyect/utils/color_pallette.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentPageIndex = 0;
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysShow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
          child: NavigationBar(
            height: 50,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            selectedIndex: currentPageIndex,
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            destinations: <Widget>[
              NavigationDestination(
                icon: SvgPicture.asset(
                  'assets/icons-ui/bottom-navigation/house.svg',
                  width: 24,
                  height: 24,
                ),
                label: "calendar",
              ),
              NavigationDestination(
                icon: SvgPicture.asset(
                  'assets/icons-ui/bottom-navigation/calendar.svg',
                  width: 24,
                  height: 24,
                ),
                label: "calendar",
              ),
              NavigationDestination(
                icon: SvgPicture.asset(
                  'assets/icons-ui/bottom-navigation/perfil.svg',
                  width: 24,
                  height: 24,
                ),
                label: "perfil",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
