import 'package:flutter/material.dart';
import 'package:skilltap/utils/theme/custom_themes/app_bar_theme.dart';
import 'package:skilltap/utils/theme/custom_themes/bottom_sheet.dart';
import 'package:skilltap/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:skilltap/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:skilltap/utils/theme/custom_themes/outlined_button._theme.dart';
import 'package:skilltap/utils/theme/custom_themes/text_field._theme.dart';
import 'package:skilltap/utils/theme/custom_themes/text_theme.dart';


class SkillTapTheme {
  SkillTapTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: STextTheme.lightTextTheme,
    elevatedButtonTheme: SElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: SAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: SBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: SCheckboxTheme.lightCheckboxTheme,
    inputDecorationTheme: STextFormFieldTheme.lightInputDecorationTheme,
    outlinedButtonTheme: SOutlinedButtonTheme.lightOutlinedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: const Color(0xFF1C1C1C),
    textTheme: STextTheme.darkTextTheme,
    elevatedButtonTheme: SElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: SAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: SBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: SCheckboxTheme.darkCheckboxTheme,
    inputDecorationTheme: STextFormFieldTheme.darkInputDecorationTheme,
    outlinedButtonTheme: SOutlinedButtonTheme.darkOutlinedButtonTheme,
  );
}