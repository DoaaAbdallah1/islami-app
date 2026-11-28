import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/constants/app_colors.dart';
import 'package:islami/core/constants/app_text_style.dart';
import 'package:islami/core/extensions/context_extension.dart';

import '../widgets/custom_text_field.dart';
import '../widgets/most_recently_widgets.dart';
import '../widgets/recently_widgets.dart';
import '../widgets/sura_list_widget.dart';

class QuranScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.width * 0.04),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .stretch,
          spacing: context.height * 0.02,
          children: [
            CustomTextField(),
            MostRecentlyWidgets(),
            SuraListWidget()
             ],
        ),
      ),
    );
  }
}
