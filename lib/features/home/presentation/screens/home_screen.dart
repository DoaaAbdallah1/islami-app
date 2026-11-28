import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/constants/app_colors.dart';
import 'package:islami/core/constants/app_text_style.dart';
import 'package:islami/core/extensions/context_extension.dart';
import 'package:islami/features/hadith/presentation/screens/hadith.dart';
import 'package:islami/features/quran/presentation/screens/quran.dart';
import 'package:islami/features/radio/presentation/screens/radio.dart';
import 'package:islami/features/sabha/presentation/screens/sabha.dart';
import 'package:islami/features/time/presentation/screens/time.dart';

import '../widgets/bottom_navigation_bar_item.dart';

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
  List<String> bgScreens = [
    AppAssets.bgHome,
    AppAssets.bgHadeth,
    AppAssets.bgSebha,
    AppAssets.bgRadio,
    AppAssets.bgTime,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,

        onTap: (value) {
          setState(() {
            index = value;
          });
        },

        items: [
          BottomNavigationBarItemCustom.quran(
            currentIndex: index,
            icon: AppAssets.quernIcon,
            label: 'Quran',
            isSelected: index == 0,
          ),
          BottomNavigationBarItemCustom.quran(
            currentIndex: index,
            icon: AppAssets.hadethIcon,
            label: 'Headith',
            isSelected: index == 1,
          ),
          BottomNavigationBarItemCustom.quran(
            currentIndex: index,
            icon: AppAssets.sebhaIcon,
            label: 'Sebha',
            isSelected: index == 2,
          ),
          BottomNavigationBarItemCustom.quran(
            currentIndex: index,
            icon: AppAssets.radioIcon,
            label: 'Radio',
            isSelected: index == 3,
          ),
          BottomNavigationBarItemCustom.quran(
            currentIndex: index,
            icon: AppAssets.timeIcon,
            label: 'Time',
            isSelected: index == 4,
          ),
        ],
      ),
      body: Stack(
        children: [
          Image.asset(bgScreens[index], width: double.infinity, fit: .fitWidth),

          SafeArea(
            child: Column(
              children: [
                SizedBox(height: context.height * 0.019),
                Image.asset(AppAssets.welcomeLogo,width: context.width*0.69,),
              
               Expanded(child: screens[index])
               
               ],
            ),
          ),
        ],
      ),
    );
  }
}
