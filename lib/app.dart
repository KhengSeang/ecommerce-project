import 'package:ecommerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

/// -- Use this Class to setup themes, initial Bindings, any animations and much more. --

class App extends StatelessWidget{
  const App({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      // home: const SplashScreen(),
    );
  }
}

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Image.asset('assets/logos/logo_light.png'), // Use your splash image
//       ),
//     );
//   }
// }