// import 'package:ecommerce_app/app.dart';
// import 'package:ecommerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'app.dart';


void main() {

  // Todo: Add Widgets Bindings
  // Todo: Init Local Storage
  // Todo: Await Native Splash
  // Todo: Initialize Firebase
  // Todo: Initialize Authentication

  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const App(),
    ),
  );
}


// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   // Add a delay to simulate a splash screen
//   await Future.delayed(const Duration(seconds: 3)); // Simulated splash time

//   runApp(
//     DevicePreview(
//       enabled: true, // Always enable DevicePreview
//       builder: (context) => const App(),
//     ),
//   );
// }
