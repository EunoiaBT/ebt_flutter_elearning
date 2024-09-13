import 'package:flutter/material.dart';

class EbtColor {
  const EbtColor._();

  // Background
  static const Color appBG = Color(0xFFF4F3F2);

  // App Basic Color
  static const Color primary = Color(0xFF246BFD);
  static const Color secondary = Color(0xFFF9A826);

  // Gradient Color
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xFFFF9A9E),
      Color(0xFFFAD0C4),
      Color(0xFFFAD0C4),
    ],
  );

  //
  static const Color heartColor = Color(0xFFDA0048);

  // Selected tab
  static const Color selectedTab = Color(0xFFFF8F71);

  // Text Color
  static const Color textPrimary = Color(0xFF246BFD);
  static const Color textSecondary = Color(0xFFF9A826);
  static const Color textWhite = Colors.white;

  // Background Color
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  // Background Container Color
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = EbtColor.white.withOpacity(0.4);

  // Button Color
  static const Color buttonPrimary = Color(0xFF246BFD);
  static const Color buttonSecondary = Color(0xFFF9A826);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  // Border Color
  static const Color borderPrimary = Color(0xFF246BFD);
  static const Color borderSecondary = Color(0xFFF9A826);

  // Validation Color
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  // Neutral Shade
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFEDEDED);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
