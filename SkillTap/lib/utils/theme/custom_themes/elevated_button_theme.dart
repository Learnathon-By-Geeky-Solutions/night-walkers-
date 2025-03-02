import 'package:flutter/material.dart';
import 'package:skilltap/utils/constants/sizes.dart';

class SElevatedButtonTheme {
  SElevatedButtonTheme._(); // To prevent instantiation

  /// Shared button style function that takes both background and foreground colors
  static ButtonStyle _buttonStyle({
    required Color backgroundColor,
    required Color foregroundColor,
    required Color borderColor,
  }) {
    return ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: foregroundColor,     // Text/icon color
      backgroundColor: backgroundColor,      // Button background color
      disabledForegroundColor: Colors.grey, // Disabled text color
      disabledBackgroundColor: Colors.grey, // Disabled button color
      side: BorderSide(color: borderColor), // Border color
      padding: const EdgeInsets.symmetric(vertical: SSizes.md), // Using your size constants
      textStyle: const TextStyle(
        fontSize: SSizes.fontSizeMd,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SSizes.buttonRadius),
      ),
    );
  }

  /// Light Theme - Dark background with white text
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: _buttonStyle(
      backgroundColor: Colors.black,    // Dark background
      foregroundColor: Colors.white,    // White text
      borderColor: Colors.black,        // Border matches background
    ),
  );

  /// Dark Theme - White background with dark text
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: _buttonStyle(
      backgroundColor: Colors.white,    // White background
      foregroundColor: Colors.black,    // Dark text
      borderColor: Colors.white,        // Border matches background
    ),
  );
}