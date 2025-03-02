import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SHelperFunctions {
  // Navigate to a new screen using GoRouter
  static void navigateToScreen(BuildContext context, String route) {
    context.go(route);
  }

  // Check if the current theme is dark mode
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  // Get screen size
  static Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  // Get screen height
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  // Get screen width
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}