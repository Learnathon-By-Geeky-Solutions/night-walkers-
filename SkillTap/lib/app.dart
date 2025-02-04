import 'package:flutter/material.dart';

class SkillTap extends StatelessWidget {
  const SkillTap({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData(),
      darkTheme: ThemeData(),
    );
  }
}
