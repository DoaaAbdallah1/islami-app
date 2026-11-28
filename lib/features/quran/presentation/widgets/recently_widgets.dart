import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_style.dart';
import '../../../../core/extensions/context_extension.dart';

class RecentlyWidgets extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(context.width * 0.03),
      decoration: BoxDecoration(
        color: AppColors.goldColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: .center,
        children: [
          Column(
            crossAxisAlignment: .start,
            mainAxisAlignment: .spaceEvenly,
            children: [
              Text("Al-Anbiya", style: AppTextStyle.bold24black),
              Text("الأنبياء", style: AppTextStyle.bold24black),
              Text("112 Verses", style: AppTextStyle.bold14black),
            ],
          ),
          Image.asset(
            AppAssets.imgMostRecent,
            width: context.width * 0.3,
            height: context.width * 0.3,
          ),
        ],
      ),
    );
  }
}
