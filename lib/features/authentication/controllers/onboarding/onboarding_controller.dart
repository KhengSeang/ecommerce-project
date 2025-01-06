import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';

class OnBoardingController {
  static OnBoardingController get instance => Get.find();

  //Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //Update Current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  //Jump to the Specific dot Selected Page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  //Update Current Index & Jump to the Next Page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //Update Current Index & Jump to the Last Page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
