import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_colors.dart';
import 'package:islami/core/constants/app_routes.dart';
import 'package:islami/core/extensions/context_extension.dart';

import '../../../../core/constants/app_text_style.dart';
import 'item_sura.dart';

class SuraListWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      spacing: context.height * 0.01,
      children: [
        Text("Suras List", style: AppTextStyle.bold16white),

        ListView.separated(
          itemCount: 114,
          separatorBuilder: (context, index) => Divider(
            color: AppColors.whiteColor,
            height: 1,
            endIndent: context.width * 0.07,
            indent: context.width * 0.07,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.souraDetails ,arguments: index);
              },
              child: ItemSura(index: index),
            );
          },
        ),
      ],
    );
  }
}
