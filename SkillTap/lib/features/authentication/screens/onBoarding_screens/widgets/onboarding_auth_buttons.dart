

import 'package:flutter/material.dart';


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skilltap/features/authentication/controller/providers/onboarding_controller.dart';
import 'package:skilltap/utils/constants/sizes.dart';
import 'package:skilltap/utils/constants/text_strings.dart';
import 'package:skilltap/utils/helpers/helpers.dart';


/// Widget for authentication buttons on last page
class OnBoardingAuthButtons extends ConsumerWidget {
  const OnBoardingAuthButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dark = SHelperFunctions.isDarkMode(context);

    return Positioned(
      left: SSizes.defaultSpace,
      right: SSizes.defaultSpace,
      bottom: kBottomNavigationBarHeight,
      child: Column(
        children: [
          /// Sign In Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => ref.read(onboardingControllerProvider.notifier)
                  .navigateToSignIn(context),
              style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                backgroundColor: WidgetStatePropertyAll(
                  dark ? Colors.white : Colors.black,
                ),
                foregroundColor: WidgetStatePropertyAll(
                  dark ? Colors.black : Colors.white,
                ),
                side: WidgetStatePropertyAll(
                  BorderSide(color: dark ? Colors.white : Colors.black),
                ),
              ),
              child: Text(
                STexts.signIn,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: SSizes.fontSizeLg,
                  color: dark ? Colors.black : Colors.white,
                ),
              ),
            ),
          ),

          const SizedBox(height: SSizes.spaceBtwItems),

          /// Create Account Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => ref.read(onboardingControllerProvider.notifier)
                  .navigateToSignUp(context),
              style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                backgroundColor: WidgetStatePropertyAll(
                  dark ? Colors.black : Colors.white,
                ),
                foregroundColor: WidgetStatePropertyAll(
                  dark ? Colors.white : Colors.black,
                ),
                side: WidgetStatePropertyAll(
                  BorderSide(color: dark ? Colors.white : Colors.black),
                ),
              ),
              child: Text(
                STexts.createAccount,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: SSizes.fontSizeLg,
                  color: dark ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}