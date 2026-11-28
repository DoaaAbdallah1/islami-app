import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_colors.dart';
import 'package:islami/core/constants/app_text_style.dart';

abstract class AppTheme {
  AppTheme._();

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: 'Janna',

    // Color Scheme
    colorScheme: const ColorScheme.dark(
      primary: AppColors.goldColor,
      onPrimary: AppColors.blackColor,
      secondary: AppColors.browneColor,
      surface: AppColors.blackColor,
      onSurface: AppColors.whiteColor,
    ),

    // Scaffold
    scaffoldBackgroundColor: AppColors.blackColor,

    // AppBar
    appBarTheme:  AppBarTheme(
      backgroundColor: AppColors.blackColor,
      foregroundColor: AppColors.goldColor,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: AppTextStyle.bold20Primary,
      
    ),
    // Bottom Navigation Bar
    bottomNavigationBarTheme:  BottomNavigationBarThemeData(
      backgroundColor: AppColors.goldColor,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      selectedItemColor: AppColors.whiteColor,
      unselectedItemColor: AppColors.blackColor,
      selectedLabelStyle: AppTextStyle.bold12Primary,
    ),
    // Cards
    cardTheme: const CardThemeData(
      color: Color(0xFF292929),
      elevation: 0,
      margin: EdgeInsets.zero,
    ),

    // Icons
    iconTheme: const IconThemeData(color: AppColors.goldColor),

    // Text
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColors.whiteColor),
      bodyMedium: TextStyle(color: AppColors.whiteColor),
      bodySmall: TextStyle(color: AppColors.grayColor),
      titleLarge: TextStyle(
        color: AppColors.goldColor,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        color: AppColors.whiteColor,
        fontWeight: FontWeight.bold,
      ),
    ),

    // Elevated Buttons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.goldColor,
        foregroundColor: AppColors.blackColor,
        textStyle: const TextStyle(
          fontFamily: 'Janna',
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),

    // Dividers
    dividerTheme: const DividerThemeData(
      color: AppColors.grayColor,
      thickness: 0.5,
    ),
  );
}
