import 'package:ebt_flutter_elearning/core/constants/ebt_color.dart';
import 'package:flutter/material.dart';

class EbtIconButtonTheme {
  EbtIconButtonTheme._();

  static final lightIconButtonTheme = IconButtonThemeData(
    style: IconButton.styleFrom(
      foregroundColor: EbtColor.buttonPrimary,
      disabledForegroundColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ), // Shape
    ),
  );

  static final darkIconButtonTheme = IconButtonThemeData(
    style: IconButton.styleFrom(
      foregroundColor: EbtColor.white,
      disabledForegroundColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ), // Shape
    ),
  );
}
