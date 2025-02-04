import 'package:flutter/material.dart';

/// -- Light & Dark Outlined Button Themes
class SOutlinedButtonTheme {
  SOutlinedButtonTheme._(); // To prevent instantiation

  /// Shared button style function to avoid duplication
  static ButtonStyle _buttonStyle(Color borderColor, Color textColor) {
    return OutlinedButton.styleFrom(
      foregroundColor: textColor, // Text color
      side: BorderSide(color: borderColor, width: 1.5), // Border color & width
      padding: const EdgeInsets.symmetric(vertical: 18), // Padding
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    );
  }

  /// -- Light Theme
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: _buttonStyle(Colors.blue, Colors.blue),
  );

  /// -- Dark Theme
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: _buttonStyle(Colors.white, Colors.white),
  );
}
