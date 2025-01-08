import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';
import 'package:t_store/features/authentication/screens/onboarding/onboarding.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();

  /// Colled from main.dart on app launch
  @override
  void onReady(){
    FlutterNativeSplash.remove();
    screenRedirect();
  }


  /// Function to show the relavant Screen
  screenRedirect() async{
    // local storage
    if (kDebugMode) {
      print('===================== Get Storage =================');
      print(deviceStorage.read('IsFirstTime'));
    }

    deviceStorage.writeIfNull('IsFirsTime', true);
    deviceStorage.read('IsFirsTime') != true
      ? Get.offAll(() => const LoginScreen())
      : Get.offAll(const OnBoardingScreen());
  }
}