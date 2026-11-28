import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/constants/app_colors.dart';
import 'package:islami/core/constants/app_routes.dart';
import 'package:islami/core/constants/app_strings.dart';
import 'package:material_ui/material_ui.dart' as material;

import '../../../../core/constants/app_text_style.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(BuildContext context) {
    // Navigate to Home Screen
    Navigator.of(context).pushReplacementNamed(AppRoutes.home);
  }

  Widget _buildImage(String image) {
    return Image.asset(
      image,
      fit: BoxFit.contain,
      width: double.infinity,
      height: 400,
    );
  }

  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      titleTextStyle: AppTextStyle.bold24Primary,
      bodyTextStyle: AppTextStyle.bold20Primary,
      bodyPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      pageColor: AppColors.blackColor,
      imagePadding: EdgeInsets.zero,
      imageFlex: 8,
      bodyFlex: 5,
    );

    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            spacing: 30,
            children: [
              Image.asset(AppAssets.welcomeLogo, width: 291, height: 171),
              Flexible(
                child: IntroductionScreen(
                  key: introKey,

                  globalBackgroundColor: AppColors.blackColor,

                  allowImplicitScrolling: true,

                  pages: [
                    // Onboarding Screen 0
                    PageViewModel(
                      title: AppStrings.onboardingWelcomeToIslamiApp0,
                      body: '',
                      image: _buildImage(AppAssets.welcomeStart),
                      decoration: pageDecoration,
                    ),

                    // Onboarding Screen 1
                    PageViewModel(
                      title: AppStrings.onboardingWelcomeToIslami1,
                      body: AppStrings.onboardingCommunityWelcome1,
                      image: _buildImage(AppAssets.kabba),
                      decoration: pageDecoration,
                    ),

                    // Onboarding Screen 2
                    PageViewModel(
                      title: AppStrings.onboardingReadingTheQuran2,
                      body: AppStrings.onboardingReadAndYourLord2,
                      image: _buildImage(AppAssets.welcomeReading),
                      decoration: pageDecoration,
                    ),

                    // Onboarding Screen 3
                    PageViewModel(
                      title: AppStrings.onboardingBearish3,
                      body: AppStrings.onboardingPraiseTheName3,
                      image: _buildImage(AppAssets.bearish),
                      decoration: pageDecoration,
                    ),

                    // Onboarding Screen 4
                    PageViewModel(
                      title: AppStrings.onboardingHolyQuranRadio4,
                      body: AppStrings.onboardingRadioDescription4,
                      image: _buildImage(AppAssets.radio),
                      decoration: pageDecoration,
                    ),
                  ],

                  onDone: () => _onIntroEnd(context),

                  showBackButton: true,
                  showSkipButton: false,
                  backStyle: material.TextButton.styleFrom(
                    alignment: .centerStart,
                  ),
                  nextStyle: material.TextButton.styleFrom(
                    alignment: .centerEnd,
                  ),
                  doneStyle: material.TextButton.styleFrom(
                    alignment: .centerEnd,
                  ),
                  back: Text(
                    AppStrings.onboardingBack,
                    style: AppTextStyle.bold16Primary,
                    textAlign: .start,
                  ),

                  next: Text(
                    AppStrings.onboardingNext,
                    style: AppTextStyle.bold16Primary,
                    textAlign: .end,
                  ),

                  done: Text(
                    AppStrings.onboardingFinish,
                    style: AppTextStyle.bold16Primary,
                    textAlign: .end,
                  ),

                  curve: Curves.fastLinearToSlowEaseIn,

                  controlsMargin: const EdgeInsets.all(0),

                  dotsDecorator: DotsDecorator(
                    size: const Size(7, 7),
                    color: AppColors.grayColor,
                    activeSize: const Size(18, 7),
                    activeColor: AppColors.goldColor,
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
