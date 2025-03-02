import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'onboarding_state.dart';
import 'package:go_router/go_router.dart';
import 'package:skilltap/common/routes/auth_routes.dart';

class OnboardingController extends StateNotifier<OnBoardingState> {
  final PageController pageController = PageController();

  OnboardingController() : super(const OnBoardingState());

  void updatePageIndicator(int page) {
    state = state.copyWith(
      currentPage: page,
      isLastPage: page == 2,
    );
  }

  void nextPage() {
    if (!state.isLastPage) {
      final nextPage = state.currentPage + 1;
      pageController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void skipToLastPage() {
    pageController.jumpToPage(2);
    state = state.copyWith(currentPage: 2, isLastPage: true);
  }

  void navigateToSignIn(BuildContext context) {
    context.pushNamed(AppRoutes.loginName);
  }

  void navigateToSignUp(BuildContext context) {
    context.pushNamed(AppRoutes.signupName);
  }
}

/// Riverpod provider for the onboarding controller
final onboardingControllerProvider =
    StateNotifierProvider<OnboardingController, OnBoardingState>(
  (ref) => OnboardingController(),
);
