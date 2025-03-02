import 'package:flutter/material.dart';
import 'package:skilltap/common/divider_with_text.dart';
import 'package:skilltap/utils/constants/image_strings.dart';
import 'package:skilltap/utils/constants/sizes.dart';
import 'package:skilltap/utils/helpers/helpers.dart';

class SocialButtons extends StatelessWidget {
  // Adding parameter to make the divider text customizable
  final String dividerText;

  const SocialButtons({
    super.key,
    required this.dividerText,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        // Using our reusable divider with customizable text
        DividerWithText(text: dividerText),

        const SizedBox(height: SSizes.spaceBtwSections),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _SocialButton(
              icon: const Icon(Icons.facebook, color: Colors.blue),
              onPressed: () {},
            ),
            const SizedBox(width: SSizes.spaceBtwItems),
            _SocialButton(
              icon: Image.asset(
                SImages.google,
                width: SSizes.iconMd,
                height: SSizes.iconMd,
              ),
              onPressed: () {},
            ),
            const SizedBox(width: SSizes.spaceBtwItems),
            _SocialButton(
              icon: Icon(
                Icons.apple,
                size: SSizes.iconMd,
                color: dark ? Colors.white : Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}

// Keeping the social button implementation the same
class _SocialButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onPressed;

  const _SocialButton({
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SSizes.buttonWidth,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(SSizes.borderRadiusMd),
      ),
      child: IconButton(
        padding: const EdgeInsets.symmetric(
          vertical: SSizes.md,
          horizontal: SSizes.lg,
        ),
        onPressed: onPressed,
        icon: icon,
      ),
    );
  }
}