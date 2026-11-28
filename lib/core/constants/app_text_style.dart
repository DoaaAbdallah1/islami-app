import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_colors.dart';

abstract class AppTextStyle {
  // Bold | 24 | Primary
  static const TextStyle bold24Primary = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontFamily: 'Janna',
    color: AppColors.goldColor,
  );
  static const TextStyle bold24black = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontFamily: 'Janna',
    color: AppColors.blackColor,
  );
  static const TextStyle bold14black = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    fontFamily: 'Janna',
    color: AppColors.blackColor,
  );
  static const TextStyle bold14white = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    fontFamily: 'Janna',
    color: AppColors.whiteColor,
  );

  // Bold | 20 | Primary
  static const TextStyle bold20Primary = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: 'Janna',
    color: AppColors.goldColor,
  );
    static const TextStyle bold20white = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: 'Janna',
    color: AppColors.whiteColor,
  );

  // Bold | 16 | Primary
  static const TextStyle bold16Primary = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    fontFamily: 'Janna',
    color: AppColors.goldColor,
  );
  static const TextStyle bold16white = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    fontFamily: 'Janna',
    color: AppColors.whiteColor,
  );
  static const TextStyle bold12Primary = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    fontFamily: 'Janna',
    color: AppColors.whiteColor,
  );
}
