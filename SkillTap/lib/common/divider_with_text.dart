import 'package:flutter/material.dart';
import 'package:skilltap/utils/constants/colors.dart';
import 'package:skilltap/utils/constants/sizes.dart';
import 'package:skilltap/utils/helpers/helpers.dart';

class DividerWithText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final Color? dividerColor;
  final double? indent;
  final double? endIndent;

  const DividerWithText({
    super.key,
    required this.text,
    this.textStyle,
    this.dividerColor,
    this.indent,
    this.endIndent,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    final defaultColor = dark ? SAppColors.darkerGrey : SAppColors.grey;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dividerColor ?? defaultColor,
            thickness: 0.5,
            indent: indent ?? 60,
            endIndent: SSizes.sm,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: SSizes.sm),
          child: Text(
            text,
            style: textStyle ?? Theme.of(context).textTheme.labelMedium?.copyWith(
              color: dark ? Colors.white70 : Colors.grey,
            ),
          ),
        ),
        Flexible(
          child: Divider(
            color: dividerColor ?? defaultColor,
            thickness: 0.5,
            indent: SSizes.sm,
            endIndent: endIndent ?? 60,
          ),
        ),
      ],
    );
  }
}