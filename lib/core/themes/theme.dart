import 'package:ebt_flutter_elearning/core/constants/ebt_color.dart';
import 'package:ebt_flutter_elearning/core/themes/custom/app_bar_theme.dart';
import 'package:ebt_flutter_elearning/core/themes/custom/bottom_sheet_theme.dart';
import 'package:ebt_flutter_elearning/core/themes/custom/checkbox_theme.dart';
import 'package:ebt_flutter_elearning/core/themes/custom/chip_theme.dart';
import 'package:ebt_flutter_elearning/core/themes/custom/elevated_button_theme.dart';
import 'package:ebt_flutter_elearning/core/themes/custom/outlined_button_theme.dart';
import 'package:ebt_flutter_elearning/core/themes/custom/text_field_theme.dart';
import 'package:ebt_flutter_elearning/core/themes/custom/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EbtAppTheme {
  EbtAppTheme._();

  // Method to set the status bar icon color
  static void setStatusBarStyle({bool isDarkMode = false}) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue,
      statusBarIconBrightness: isDarkMode ? Brightness.light : Brightness.dark,
      statusBarBrightness: isDarkMode ? Brightness.dark : Brightness.light,
    ));
  }

  // Light theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: EbtTextTheme.lightTextTheme,
    chipTheme: EbtChipTheme.lightChipTheme,
    scaffoldBackgroundColor: EbtColor.appBG,
    appBarTheme: EbtAppBarTheme.lightAppBarTheme,
    checkboxTheme: EbtCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: EbtBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: EbtElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: EbtOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: EbtTextFieldTheme.lightInputDecorationTheme,
    switchTheme: GfxSwitchTheme.lightSwitchTheme,
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: EbtTextTheme.darkTextTheme,
    chipTheme: EbtChipTheme.darkChipTheme,
    scaffoldBackgroundColor: EbtColor.dark,
    appBarTheme: EbtAppBarTheme.darkAppBarTheme,
    checkboxTheme: EbtCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: EbtBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: EbtElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: EbtOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: EbtTextFieldTheme.darkInputDecorationTheme,
    switchTheme: GfxSwitchTheme.darkSwitchTheme,
  );
}
