import 'package:flutter/material.dart';

/// Custom Class for Light and Dark Text Themes
class TCheckTheme {
  TCheckTheme._(); // To avoid Creating instances

  /// Cutomizeable Light Text Theme
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith<Color?>((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white; // Check color when selected
      }
      return Colors.black; // Check color when not selected
    }),
    fillColor: WidgetStateProperty.resolveWith<Color?>((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.blue; // Background color when selected
      }
      return Colors.transparent; // Background color when not selected
    }),
  );

  /// Cutomizeable Dark Text Theme
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith<Color?>((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white; // Check color when selected
      }
      return Colors.black; // Check color when not selected
    }),
    fillColor: WidgetStateProperty.resolveWith<Color?>((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.blue; // Background color when selected
      }
      return Colors.transparent; // Background color when not selected
    }),
  );


}

