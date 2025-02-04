import 'package:flutter/material.dart';

/// -- Light & Dark Elevated Button Themes
class SElevatedButtonTheme {
  SElevatedButtonTheme._(); // To prevent instantiation

  /// Shared button style function to avoid duplication
  static ButtonStyle _buttonStyle(Color backgroundColor) {
    return ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white, // Text color
      backgroundColor: backgroundColor, // Button background color
      disabledForegroundColor: Colors.grey, // Disabled text color
      disabledBackgroundColor: Colors.grey, // Disabled button color
      side: BorderSide(color: backgroundColor), // Border color
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    );
  }

  /// -- Light Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: _buttonStyle(Colors.blue),
  );

  /// -- Dark Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: _buttonStyle(Colors.blue),
  );
}
