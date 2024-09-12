import 'package:ebt_flutter_elearning/core/constants/ebt_color.dart';
import 'package:flutter/material.dart';

class EbtSwitchTheme {
  EbtSwitchTheme._();

  static SwitchThemeData lightSwitchTheme = SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return EbtColor.white;
      } else {
        return EbtColor.primary;
      }
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return EbtColor.primary;
      } else {
        return Colors.grey.shade300;
      }
    }),
  );

  static SwitchThemeData darkSwitchTheme = SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.blue;
      } else {
        return Colors.grey.shade700;
      }
    }),
  );
}
