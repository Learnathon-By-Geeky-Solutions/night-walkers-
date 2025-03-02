import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skilltap/features/authentication/controller/providers/onboarding_controller.dart';
import 'package:skilltap/features/authentication/screens/onBoarding_screens/widgets/onboarding_navigation.dart';
import 'package:skilltap/features/authentication/screens/onBoarding_screens/widgets/onboarding_page.dart';
import 'package:skilltap/utils/constants/image_strings.dart';
import 'package:skilltap/utils/constants/text_strings.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  @override
  void dispose() {
    ref.read(onboardingControllerProvider.notifier).pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final onboardingState = ref.watch(onboardingControllerProvider);
    final onboardingController = ref.read(onboardingControllerProvider.notifier);

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          PageView(
            controller: onboardingController.pageController,
            onPageChanged: (index) {
              ref.read(onboardingControllerProvider.notifier).updatePageIndicator(index);
            },
            children: const [
              OnBoardingPage(
                title: STexts.onBoardingTitle1,
                image: SImages.onBoardingImage1,
                subTitle: STexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                title: STexts.onBoardingTitle2,
                image: SImages.onBoardingImage2,
                subTitle: STexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                title: STexts.onBoardingTitle3,
                image: SImages.onBoardingImage3,
                subTitle: STexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Navigation Buttons
          OnBoardingNavigation(
            onboardingState: onboardingState,
          ),
        ],
      ),
    );
  }
}
