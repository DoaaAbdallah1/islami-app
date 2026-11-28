import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_style.dart';
import '../../../../core/extensions/context_extension.dart';

class CustomTextField extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Sura Name',
        hintStyle: AppTextStyle.bold16white,
        prefixIcon: Image.asset(
          AppAssets.vectorQuern,
          width: context.width * 0.06,
          height: context.width * 0.06,
        ),
        fillColor: AppColors.blackWithOpacity70,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.goldColor, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.goldColor, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.goldColor, width: 1),
        ),
      ),
    );
  }
}
