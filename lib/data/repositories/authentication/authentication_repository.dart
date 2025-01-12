import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';
import 'package:t_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:t_store/utils/exceptions/platform_exceptions.dart';

import '../../../utils/exceptions/firebase_auth_exceptions.dart';
import '../../../utils/exceptions/firebase_exceptions.dart';
import '../../../utils/exceptions/format_exceptions.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

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



/* ------------------------------- Email and Password -------------------------------*/


/// [EmailAuthentication] - SignIN

///  [EmailAuthentication] - Register
  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async{
    try {
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code);
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }
}