import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._();

  static const TextStyle logo = TextStyle(
    fontSize: 44,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle h1 = TextStyle(fontSize: 24);

  static const TextStyle h2 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.2,
  );

  static const TextStyle h3 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle h4 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle bodyLarge = TextStyle(fontSize: 16, height: 1.5);

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.3,
  );

  static const TextStyle bodySmall = TextStyle(fontSize: 14);

  static const TextStyle bodyWhite = TextStyle(
    fontSize: 14,
    color: Colors.white,
  );

  static const TextStyle bodyBlack87 = TextStyle(
    fontSize: 16,
    color: Colors.black87,
    height: 1.5,
  );

  static const TextStyle button = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle buttonWhite = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle label = TextStyle(fontSize: 12);

  static const TextStyle labelSmall = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.2,
  );

  static const TextStyle sectionDivider = TextStyle(
    fontSize: 8,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static const TextStyle price = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle priceStrikethrough = TextStyle(
    fontSize: 12,
    decoration: TextDecoration.lineThrough,
  );

  static const TextStyle creditValue = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle link = TextStyle(
    fontSize: 16,
    decoration: TextDecoration.underline,
    height: 1.5,
  );

  static const TextStyle searchHint = TextStyle(fontSize: 14);
}
