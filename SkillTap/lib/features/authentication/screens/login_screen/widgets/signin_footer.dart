import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skilltap/utils/constants/sizes.dart';
import 'package:skilltap/utils/helpers/helpers.dart';

class SignInFooter extends StatelessWidget {
  const SignInFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: dark ? Colors.white70 : Colors.black54,
            fontSize: SSizes.fontSizeMd,
          ),
        ),
        TextButton(
          onPressed: () => context.pushNamed('signup'),
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            'Sign up',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: dark ? Colors.white : Colors.black,
              fontSize: SSizes.fontSizeMd,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}