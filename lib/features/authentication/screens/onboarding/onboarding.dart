import 'package:ecommerce_app/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/size.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/device/device.utility.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constants/colors.dart';

class OnBoardingScreen extends StatelessWidget{
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context){
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
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
          OnBoardingDotNavigation(),

          ///Circle Button
          OnBoardingNextButton(),

        ],
      )
    );
  }
}







