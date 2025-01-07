import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:t_store/app.dart';
import 'package:t_store/firebase_options.dart';


/// -- Entry point of flutter app
Future<void> main() async {
  

  // Todo: Add Widgets Bindings
  // Todo: Init Local Storage
  // Todo: Await Native Splash
  // Todo: Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
    (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );


  // Todo: Initialize Authentication



  runApp(const App());

}


// asdfghjdfghjgh