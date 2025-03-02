import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skilltap/features/authentication/screens/signup_screen/signup_screen.dart';
import 'package:skilltap/utils/theme/theme.dart';

import 'common/routes/auth_routes.dart';
import 'features/authentication/screens/login_screen/login_screen.dart';
import 'features/authentication/screens/onBoarding_screens/onboarding_screen.dart';

class SkillTap extends StatelessWidget {
  const SkillTap({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,  // Pass goRouter here
      themeMode: ThemeMode.system,
      theme: SkillTapTheme.lightTheme,
      darkTheme: SkillTapTheme.darkTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}

final goRouter = GoRouter(
  initialLocation: AppRoutes.onboarding,
  routes: [
    GoRoute(
      path: AppRoutes.onboarding,
      name: AppRoutes.onboardingName,  // Use constant for consistency
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: AppRoutes.login,
      name: AppRoutes.loginName,       // Use constant for consistency
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: AppRoutes.signup,
      name: AppRoutes.signupName,      // Use constant for consistency
      builder: (context, state) => const SignupScreen(),
    ),
  ],
);
