import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skilltap/common/auth/auth_header.dart';
import 'package:skilltap/common/auth/social_buttons.dart';
import 'package:skilltap/common/styles/spacing_styles.dart';
import 'package:skilltap/features/authentication/screens/login_screen/widgets/signin_footer.dart';
import 'package:skilltap/features/authentication/screens/login_screen/widgets/signin_form.dart';
import 'package:skilltap/utils/constants/sizes.dart';
import 'package:skilltap/utils/constants/text_strings.dart';


class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Using the reusable auth header
              AuthHeader(
                title: STexts.loginTitle,
                subtitle: STexts.loginSubTitle,
              ),

              SizedBox(height: SSizes.spaceBtwSections),

              SignInForm(),

              SizedBox(height: SSizes.spaceBtwSections),

              // Using the reusable social buttons
              SocialButtons(
                dividerText: STexts.orSignInWith,
              ),

              SizedBox(height: SSizes.spaceBtwSections),

              SignInFooter(),
            ],
          ),
        ),
      ),
    );
  }
}