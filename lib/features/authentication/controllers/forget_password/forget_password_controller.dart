

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:t_store/data/repositories/authentication/authentication_repository.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/popups/full_screen_loader.dart';
import 'package:t_store/utils/popups/loaders.dart';

import '../../../../utils/helpers/network_manager.dart';
import '../../screens/password_configuration/reset_password.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  /// Variables
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  /// Send Reset Password email
  sendPasswordResetEmail() async{
    try{
      // Start loader
      TFullScreenLoader.openLoadingDialog('Processing your request...', TImages.docerAnimation);

      // Check internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected) { TFullScreenLoader.stopLoading(); return; }

      // Form validation
      if (!forgetPasswordFormKey.currentState!.validate()){
        TFullScreenLoader.stopLoading();
        return;
      }

      // Send email to reset password
      await AuthenticationRepository.instance.sendPasswordReset(email.text.trim());

      // Remove loader
      TFullScreenLoader.stopLoading();

      // Show email sucess screen
      TLoaders.successSnackBar(title: 'Email sent', message: 'Email link sent to reset your password'.tr);

      // Redirect
      Get.to(() => ResetPasswordScreen(email: email.text.trim()));

    } catch(e){
      // Remove loader
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh snap!', message: e.toString());
    }
  }



  resendPasswordResetEmail(String email) async{
    try{
      // Start loader
      TFullScreenLoader.openLoadingDialog('Processing your request...', TImages.docerAnimation);

      // Check internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected) { TFullScreenLoader.stopLoading(); return;}

      // Send email to reset password
      await AuthenticationRepository.instance.sendPasswordReset(email);

      // Remove loader
      TFullScreenLoader.stopLoading();

      // Show email sucess screen
      TLoaders.successSnackBar(title: 'Email sent', message: 'Email link sent to reset your password'.tr);


    } catch(e){
      // Remove loader
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh snap!', message: e.toString());
    }
  }
}