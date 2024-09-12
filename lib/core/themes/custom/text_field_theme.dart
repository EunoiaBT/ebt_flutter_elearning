import 'package:ebt_flutter_elearning/core/constants/ebt_color.dart';
import 'package:flutter/material.dart';

class EbtTextFieldTheme {
  EbtTextFieldTheme._();

  // Light Theme
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    // errorMaxLines: 3,
    prefixIconColor: EbtColor.grey,
    suffixIconColor: EbtColor.darkGrey,
    prefixStyle: const TextStyle().copyWith(fontSize: 12, color: EbtColor.grey),
    labelStyle: const TextStyle().copyWith(fontSize: 12, color: EbtColor.grey),
    hintStyle: const TextStyle().copyWith(fontSize: 12, color: EbtColor.grey),
    errorStyle: const TextStyle().copyWith(
      fontSize: 10, fontStyle: FontStyle.normal, height: 0,
      // color: Colors.transparent,
    ),
    contentPadding: const EdgeInsets.symmetric(
      vertical: 0,
      horizontal: 12.0,
    ),
    floatingLabelStyle: const TextStyle().copyWith(
      color: Colors.black.withOpacity(0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(width: 1, color: EbtColor.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(width: 1, color: EbtColor.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(width: 1, color: Colors.black12),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(width: 1, color: Colors.orange),
    ),
  );

  // Dark Theme
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    // errorMaxLines: 3,
    prefixIconColor: EbtColor.grey,
    suffixIconColor: EbtColor.grey,
    prefixStyle: const TextStyle().copyWith(fontSize: 12, color: EbtColor.grey),
    labelStyle: const TextStyle().copyWith(fontSize: 12, color: Colors.white),
    hintStyle: const TextStyle().copyWith(fontSize: 12, color: Colors.white),
    errorStyle: const TextStyle().copyWith(
      fontSize: 10, fontStyle: FontStyle.normal, height: 0,
      // color: Colors.transparent,
    ),
    contentPadding: const EdgeInsets.symmetric(
      vertical: 0,
      horizontal: 12.0,
    ),
    floatingLabelStyle: const TextStyle().copyWith(
      color: Colors.white.withOpacity(0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(width: 1, color: EbtColor.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(width: 1, color: EbtColor.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(width: 1, color: Colors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(width: 1, color: Colors.orange),
    ),
  );
}
