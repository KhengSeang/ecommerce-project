import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();

/// Customize Light Text Theme
  static TextTheme lightTextTheme = const TextTheme(
    headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.black),
    headlineSmall: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),


    titleLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black),
    titleMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black),
    titleSmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.black),


    bodyLarge: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black),
    bodyMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black),
    bodySmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Color(0x80000000)),


    labelLarge: TextStyle(fontSize:12.0, fontWeight: FontWeight.normal, color: Colors.black),
    labelMedium: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black),
  );


  /// Customize Dark Text Theme

  // static TextTheme darkTextTheme = const TextTheme(
  //   headlineLarge: TextStyle(
  //     fontSize: 32,
  //     fontWeight: FontWeight.bold,
  //     color: Colors.white,
  //   ),
  //   headlineMedium: TextStyle(
  //     fontSize: 24,
  //     fontWeight: FontWeight.w600,
  //     color: Colors.white,
  //   ),
  // );

  static TextTheme darkTextTheme = const TextTheme(
    headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.white),
    headlineSmall: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white),

    titleLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
    titleMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.white),
    titleSmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.white),

    bodyLarge: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.white),
    bodyMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.white),
    bodySmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Color(0x80FFFFFF)), // 50% opacity white

    labelLarge: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.white),
    labelMedium: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.white),
  );
}
