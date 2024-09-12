import 'package:ebt_flutter_elearning/core/constants/ebt_color.dart';
import 'package:flutter/material.dart';

class EbtChipTheme {
  EbtChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: EbtColor.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: EbtColor.black),
    selectedColor: EbtColor.black,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: EbtColor.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: EbtColor.darkerGrey,
    labelStyle: TextStyle(color: EbtColor.white),
    selectedColor: EbtColor.black,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: EbtColor.white,
  );
}
