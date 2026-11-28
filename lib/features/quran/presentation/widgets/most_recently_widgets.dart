import 'package:flutter/material.dart';

import '../../../../core/constants/app_text_style.dart';
import '../../../../core/extensions/context_extension.dart';
import 'recently_widgets.dart';

class MostRecentlyWidgets extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: context.height * 0.01,
      children: [
          Text("Most Recently", style: AppTextStyle.bold16white),
          SizedBox(
            height: context.height * 0.18,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 12,
              separatorBuilder: (context, index) =>
                  SizedBox(width: context.width * 0.02),
              itemBuilder: (context, index) => RecentlyWidgets(),
            ),
          ),
      ],
    );
  }
}