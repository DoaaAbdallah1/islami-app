import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/constants/app_colors.dart';

class BottomNavigationBarItemCustom {
  BottomNavigationBarItemCustom._();

  static BottomNavigationBarItem quran({
    required int currentIndex,
    required String icon,
    required String label,
    required bool isSelected,
  }) {
  

    return BottomNavigationBarItem(
      icon: Container(
        margin: EdgeInsets.only(bottom: 3),
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.blackWithOpacity60
              : Colors.transparent,
          borderRadius: BorderRadius.circular(66),
        ),
        child: SvgPicture.asset(
          icon,
          colorFilter: ColorFilter.mode(
            isSelected
                ? AppColors.whiteColor
                : AppColors.blackColor,
            BlendMode.srcIn,
          ),
        ),
      ),
      label: label,
    );
  }
}