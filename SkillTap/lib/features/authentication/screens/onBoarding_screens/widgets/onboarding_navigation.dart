import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skilltap/features/authentication/controller/providers/onboarding_controller.dart';
import 'package:skilltap/features/authentication/controller/providers/onboarding_state.dart';
import 'package:skilltap/utils/constants/colors.dart';
import 'package:skilltap/utils/constants/sizes.dart';
import 'package:skilltap/utils/constants/text_strings.dart';
import 'package:skilltap/utils/helpers/helpers.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'onboarding_auth_buttons.dart';

/// Widget to handle onboarding navigation
class OnBoardingNavigation extends ConsumerWidget {
  const OnBoardingNavigation({
    super.key,
    required this.onboardingState,
  });

  final OnBoardingState onboardingState;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dark = SHelperFunctions.isDarkMode(context);
    final onboardingController = ref.read(onboardingControllerProvider.notifier);

    /// Show auth buttons on last page
    if (onboardingState.isLastPage) {
      return const OnBoardingAuthButtons();
    }

    /// Show navigation controls for other pages
    return Positioned(
      left: 0,
      right: 0,
      bottom: kBottomNavigationBarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          /// Skip button
          TextButton(
            onPressed: onboardingController.skipToLastPage,
            child: Text(
              STexts.skip,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: dark ? SAppColors.whiteShade7 : SAppColors.darkerGrey,
                fontWeight: FontWeight.w600,
                fontSize: SSizes.fontSizeLg,
              ),
            ),
          ),

          /// Page indicator
          SmoothPageIndicator(
            controller: onboardingController.pageController,
            count: 3,
            effect: WormEffect(
              dotColor: dark ? SAppColors.whiteShade3 : SAppColors.blackShade2,
              activeDotColor: dark ? SAppColors.whiteShade9 : SAppColors.primary,
              dotHeight: 10,
              dotWidth: 10,
              spacing: 8,
              radius: 10,
              strokeWidth: 1,
              type: WormType.normal,
            ),
          ),

          /// Next button
          TextButton(
            onPressed: onboardingController.nextPage,
            child: Text(
              STexts.next,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: dark ? SAppColors.textWhite : SAppColors.buttonPrimary,
                fontWeight: FontWeight.w600,
                fontSize: SSizes.fontSizeLg,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
