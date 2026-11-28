import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/constants/app_text_style.dart';
import 'package:islami/core/extensions/context_extension.dart';
import 'package:islami/features/quran/data/constants/quran_constants.dart';

class ItemSura extends StatelessWidget {
  final int index;
  const ItemSura({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: context.height * 0.008),
      child: Row(
        children:[
          Stack(
            alignment: .center,
            children:[
              Image.asset(AppAssets.starIcon, ),
              Text("${index+1}",style: AppTextStyle.bold20white.copyWith(fontSize: 12),),
              
            ]
          ),
          SizedBox(width: context.width*0.04,),
          Column(
            spacing: context.height*0.004,
            mainAxisAlignment: .spaceBetween,
            crossAxisAlignment: .start,
            children:[
              Text(QuranConstants.englishQuranSurahs[index], style: AppTextStyle.bold20white,),
              Text("${QuranConstants.AyaNumber[index]} Verses",style: AppTextStyle.bold14white,)
            ]
          ),
          Spacer(),
          Text(QuranConstants.arabicAuranSuras[index] , style: AppTextStyle.bold20white,)
        ]
      ),
    );
  }
}