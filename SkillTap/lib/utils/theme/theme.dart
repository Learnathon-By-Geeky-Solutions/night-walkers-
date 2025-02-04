import 'package:flutter/material.dart';
import 'package:skillset/utils/theme/custom_themes/app_bar_theme.dart';
import 'package:skillset/utils/theme/custom_themes/bottom_sheet.dart';
import 'package:skillset/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:skillset/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:skillset/utils/theme/custom_themes/outlined_button._theme.dart';
import 'package:skillset/utils/theme/custom_themes/text_field._theme.dart';
import 'package:skillset/utils/theme/custom_themes/text_theme.dart';

class SkillTapTheme {
  SkillTapTheme._();
//light mode theme
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Muli',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: STextTheme.lightTextTheme,
      elevatedButtonTheme: SElevatedButtonTheme.lightElevatedButtonTheme,
      appBarTheme: SAppBarTheme.lightAppBarTheme,
      bottomSheetTheme: SBottomSheetTheme.lightBottomSheetTheme,
      checkboxTheme: SCheckboxTheme.lightCheckboxTheme,
      inputDecorationTheme: STextFormFieldTheme.lightInputDecorationTheme,
      outlinedButtonTheme: SOutlinedButtonTheme.lightOutlinedButtonTheme);
//dark mode theme
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Muli',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: STextTheme.darkTextTheme,
      elevatedButtonTheme: SElevatedButtonTheme.darkElevatedButtonTheme,
      appBarTheme: SAppBarTheme.darkAppBarTheme,
      bottomSheetTheme: SBottomSheetTheme.darkBottomSheetTheme,
      checkboxTheme: SCheckboxTheme.darkCheckboxTheme,
      inputDecorationTheme: STextFormFieldTheme.darkInputDecorationTheme,
      outlinedButtonTheme: SOutlinedButtonTheme.darkOutlinedButtonTheme);
}
