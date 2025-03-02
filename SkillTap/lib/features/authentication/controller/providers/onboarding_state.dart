

/// State class to manage onboarding states
class OnBoardingState {
  /// Current page index in PageView
  final int currentPage;

  /// Flag to indicate if user is on last page
  final bool isLastPage;

  /// Constructor with default values
  const OnBoardingState({
    this.currentPage = 0,
    this.isLastPage = false,
  });

  /// Method to create a new instance with updated values
  OnBoardingState copyWith({
    int? currentPage,
    bool? isLastPage,
  }) {
    return OnBoardingState(
      currentPage: currentPage ?? this.currentPage,
      isLastPage: isLastPage ?? this.isLastPage,
    );
  }
}