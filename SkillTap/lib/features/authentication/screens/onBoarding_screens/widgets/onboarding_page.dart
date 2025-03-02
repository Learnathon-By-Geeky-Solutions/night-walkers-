
import 'package:flutter/material.dart';
import 'package:skilltap/utils/constants/colors.dart';
import 'package:skilltap/utils/constants/sizes.dart';
import 'package:skilltap/utils/helpers/helpers.dart';


class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SSizes.xl),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            width: SHelperFunctions.screenWidth(context) * 0.8,
            height: SHelperFunctions.screenHeight(context) * 0.4,
            image: AssetImage(image),
          ),
          const SizedBox(height: SSizes.spaceBtwSections),
          Text(
            title.toUpperCase(),
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              color: SHelperFunctions.isDarkMode(context)
                  ? SAppColors.textWhite
                  : SAppColors.textPrimary,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: SSizes.md),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: SSizes.fontSizeLg,
              color: SHelperFunctions.isDarkMode(context)
                  ? SAppColors.textWhite.withOpacity(0.7)
                  : SAppColors.textSecondary,
              fontWeight: FontWeight.w600
            ),
            textAlign: TextAlign.center,
            maxLines: 3,
          ),
        ],
      ),
    );
  }
}