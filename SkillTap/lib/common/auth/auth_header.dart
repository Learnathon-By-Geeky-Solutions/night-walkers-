import 'package:flutter/material.dart';
import 'package:skilltap/common/custom_back_button.dart';
import 'package:skilltap/utils/constants/colors.dart';
import 'package:skilltap/utils/constants/image_strings.dart';
import 'package:skilltap/utils/constants/sizes.dart';
import 'package:skilltap/utils/helpers/helpers.dart';

class AuthHeader extends StatelessWidget {
  // Adding parameters to make the header reusable
  final String title;
  final String subtitle;

  const AuthHeader({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        // Logo and Back Button
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomBackButton(),
            Image(
              height: 100,
              image: AssetImage(
                dark ? SImages.lightAppLogo : SImages.darkAppLogo,
              ),
            ),
          ],
        ),

        const SizedBox(height: SSizes.spaceBtwSections),

        // Title & Subtitle
        Text(
          title,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: SSizes.md),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontSize: SSizes.fontSizeLg,
            color: dark
                ? SAppColors.textWhite.withOpacity(0.7)
                : SAppColors.textSecondary,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}