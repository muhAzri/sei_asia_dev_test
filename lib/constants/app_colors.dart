import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color primary = Color(0xFF2D5F4D);
  static const Color primaryDark = Color(0xFF244B3A); // Header background
  static const Color primaryDarker = Color(0xFF112F22);
  static const Color primaryVariant = Color(0xFF1B5E4D); // Credit value
  static const Color secondary = Color(0xFF476B5C); // Menu button background

  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color black87 = Colors.black87;

  static const Color grey200 = Color(0xFFF4F4F4); // Backgrounds, dividers
  static const Color grey300 = Color(0xFFE0E0E0); // Dividers

  static Color get shadow => Colors.black.withValues(alpha: 0.1);
}
