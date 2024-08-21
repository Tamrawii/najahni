import 'package:flutter/material.dart';

class AppColors {
  static const Color blue1 = Color(0xFF1c7ed6);  // Hex: #1c7ed6
  static const Color blue2 = Color(0xFF4dabf7);  // Hex: #4dabf7
  static const Color blue3 = Color(0xFFe7f5ff);  // Hex: #a5d8ff

  static const Color dark1 = Color(0xFF212529);  // Hex: #212529
  static const Color dark2 = Color(0xFF343a40);  // Hex: #343a40
  static const Color gray = Color(0xFFadb5bd);   // Hex: #adb5bd

  static const Color yellow = Color(0xFFFFEC99); // Hex: #FFEC99
}

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFE4F0FA),
  100: Color(0xFFBBD8F3),
  200: Color(0xFF8EBFEB),
  300: Color(0xFF60A5E2),
  400: Color(0xFF3E91DC),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF1976D1),
  700: Color(0xFF146BCC),
  800: Color(0xFF1161C6),
  900: Color(0xFF094EBC),
});
const int _primaryPrimaryValue = 0xFF1C7ED6;

const MaterialColor primaryAccent = MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFE7EFFF),
  200: Color(_primaryAccentValue),
  400: Color(0xFF81ABFF),
  700: Color(0xFF689AFF),
});
const int _primaryAccentValue = 0xFFB4CDFF;
