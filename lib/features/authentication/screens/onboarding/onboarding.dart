import 'package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget{
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal scrollable pages
          PageView(
            children: [
              OnBoardingPage(
              image: TImages.onBoardingImage1,
              title: TTexts.onboardingTitle,
              subTitle: TTexts.onboardingSubTitle
              ),
              OnBoardingPage(
              image: TImages.onBoardingImage2,
              title: TTexts.onboardingTitle2,
              subTitle: TTexts.onboardingSubTitle2,
              ),
              OnBoardingPage(
              image: TImages.onBoardingImage3,
              title: TTexts.onboardingTitle3,
              subTitle: TTexts.onboardingSubTitle3,
              ),
            ],
          ),


          /// Skip button
          OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          
          
        ],
      )
    );
  }
}



