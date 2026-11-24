import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_colors.dart';
import 'package:islami/features/hadith/presentation/screens/hadith.dart';
import 'package:islami/features/quran/presentation/screens/quran.dart';
import 'package:islami/features/radio/presentation/screens/radio.dart';
import 'package:islami/features/sabha/presentation/screens/sabha.dart';
import 'package:islami/features/time/presentation/screens/time.dart';

class HomeScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> screens = [
    QuranScreen(),
    HadithScreen(),
    SabhaScreen(),
    RadioScreen(),
    TimeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        backgroundColor: AppColors.primaryColor,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        selectedItemColor: AppColors.whiteColor,
        unselectedItemColor: AppColors.secondaryColor,
        onTap: (value) {
          index = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About Us'),
        ],
      ),

      body: screens[index],
    );
  }
}
