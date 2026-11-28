
import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_routes.dart';
import 'package:islami/core/constants/app_theme.dart';
import 'package:islami/features/home/presentation/screens/home_screen.dart';
import 'package:islami/features/onboarding/presentation/screens/onboarding_screen.dart';

import 'features/quran/presentation/screens/soura_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami',
      debugShowCheckedModeBanner: false,

      theme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,

      initialRoute: AppRoutes.onboarding,

      routes: {
        AppRoutes.onboarding: (context) => OnboardingScreen(),
        AppRoutes.home: (context) => HomeScreen(),
        AppRoutes.souraDetails:(context) => SouraDetailsScreen(),
      },
    );
  }
}
