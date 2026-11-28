import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/constants/app_text_style.dart';
import 'package:islami/core/extensions/context_extension.dart';
import 'package:islami/features/quran/data/constants/quran_constants.dart';

class SouraDetailsScreen extends StatelessWidget {
  const SouraDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(title: Text(QuranConstants.englishQuranSurahs[index])),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                AppAssets.imgBottomDecoration,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Stack(
                  alignment: .center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: context.width * 0.025,
                      ),
                      child: Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Image.asset(
                            AppAssets.imgLeftCorner,
                            width: context.width * 0.18,
                          ),
                          Image.asset(
                            AppAssets.imgRightCorner,
                            width: context.width * 0.18,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      QuranConstants.arabicAuranSuras[index],
                      style: AppTextStyle.bold24Primary,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
