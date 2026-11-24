import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/constants/app_colors.dart';
import 'package:islami/core/constants/app_routes.dart';
import 'package:islami/core/constants/app_strings.dart';
import 'package:material_ui/material_ui.dart' as material;

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
    const titleStyle = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      fontFamily: "Janna",
      color: AppColors.primaryColor,
    );

    const bodyStyle = TextStyle(
      fontSize: 20,
      fontFamily: "Janna",
      fontWeight: FontWeight.bold,
      color: AppColors.primaryColor,
    );

    const pageDecoration = PageDecoration(
      titleTextStyle: titleStyle,
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      pageColor: AppColors.secondaryColor,
      imagePadding: EdgeInsets.zero,
      imageFlex: 8,
      bodyFlex: 5,
    );

    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
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

                  globalBackgroundColor: AppColors.secondaryColor,

                  allowImplicitScrolling: true,

                  pages: [
                    // Onboarding Screen 0
                    PageViewModel(
                      title: AppStrings.onboardingWelcomeToIslamiApp0,
                      body: '',
                      image: _buildImage(AppAssets.welcome2),
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
                      image: _buildImage(AppAssets.welcome),
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
                    alignment: .centerStart
                  ),
                  nextStyle: material.TextButton.styleFrom(
                    alignment: .centerEnd
                  ),
                  doneStyle: material.TextButton.styleFrom(
                    alignment: .centerEnd
                  ),
                  back: const Text(
                    AppStrings.onboardingBack,
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 16,
                      fontFamily: "Janna",
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: .start,
                  ),

                  next: const Text(
                    AppStrings.onboardingNext,
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 16,
                      fontFamily: "Janna",
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: .end,
                  ),

                  done: const Text(
                    AppStrings.onboardingFinish,
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 16,
                      fontFamily: "Janna",
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: .end,
                  ),

                  curve: Curves.fastLinearToSlowEaseIn,

                  controlsMargin: const EdgeInsets.all(0),

                  dotsDecorator: DotsDecorator(
                    size: const Size(7, 7),
                    color: AppColors.textColor,
                    activeSize: const Size(18, 7),
                    activeColor: AppColors.primaryColor,
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
