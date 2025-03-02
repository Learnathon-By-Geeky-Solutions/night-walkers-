import 'package:flutter/material.dart';
import 'package:skilltap/utils/constants/colors.dart';
import 'package:skilltap/utils/constants/sizes.dart';

/// Custom Class for Light & Dark Text Field Themes

class STextFormFieldTheme {
  STextFormFieldTheme._(); // To avoid creating instances


  /// Style for labels above text fields - Light Theme
  static TextStyle lightLabelStyle = const TextStyle(
    fontSize: SSizes.fontSizeLg,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  /// Style for labels above text fields - Dark Theme
  static TextStyle darkLabelStyle = const TextStyle(
    fontSize: SSizes.fontSizeLg,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  /// -- Light Theme
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(fontSize: 16, color: Colors.black),
    hintStyle: const TextStyle().copyWith(fontSize: 16, color: Colors.grey),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle(color: Colors.black.withOpacity(0.8)),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(width: 1, color:Colors.black12 ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(width: 1, color: Colors.black12),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(width: 2, color: Colors.black12),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(width: 2, color: Colors.orange),
    ),
  );

  /// -- Dark Theme
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle(fontSize: 16, color: Colors.white),
    hintStyle: const TextStyle(fontSize: 16, color: Colors.white38),
    floatingLabelStyle: const TextStyle(color: Colors.white),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(width: 1, color: Color(0xFF2A2C2E) ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(width: 1, color: Color(0xFF2A2C2E)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(width: 2, color:  Color(0xFF2A2C2E)),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(width: 2, color: Colors.orange),
    ),
  );
}
