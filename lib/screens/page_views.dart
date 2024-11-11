import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recuerdame_proyect/screens/medication/add_medication.dart';
import 'package:recuerdame_proyect/screens/profile/main_profile-screen.dart';
import 'package:recuerdame_proyect/widgets/bottom_navigation.dart';

import 'home_screen.dart';


class MainPageView extends StatefulWidget {
  const MainPageView({super.key});

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  int currentPageIndex = 0;
  final PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      currentPageIndex = index;
    });
    _pageController.jumpToPage(index); // Navigate to the selected page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(), // Disable swipe to avoid unintended changes
        children: [
          HomeScreen(),
          AddMedicationPage(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigation(onItemTapped: _onItemTapped,),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
