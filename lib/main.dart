import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_routes.dart';
import 'package:islami/features/home/presentation/screens/home_screen.dart';
import 'package:islami/features/onboarding/presentation/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: AppRoutes.onboarding,
      routes:{
      AppRoutes.onboarding:(context)=> OnboardingScreen(),
      AppRoutes.home:(context) => HomeScreen()
      } ,
    );
  }
}