import 'package:flutter/material.dart';
import 'package:skilltap/utils/constants/sizes.dart';
import 'package:skilltap/utils/constants/text_strings.dart';
import 'package:skilltap/utils/helpers/helpers.dart';
import 'package:skilltap/utils/theme/custom_themes/text_field._theme.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: SSizes.spaceBtwSections),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Email Field
            Text(
              STexts.email,
              style: dark
                  ? STextFormFieldTheme.darkLabelStyle
                  : STextFormFieldTheme.lightLabelStyle,
            ),
            const SizedBox(height: SSizes.sm),
            TextFormField(
              style: TextStyle(
                color: dark ? Colors.white : Colors.black,
                fontSize: SSizes.fontSizeLg,
                fontWeight: FontWeight.w500,
              ),
              decoration: const InputDecoration(
                hintText: 'name@example.com',
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),

            const SizedBox(height: SSizes.spaceBtwInputFields),

            // Password Field
            Text(
              STexts.password,
              style: dark
                  ? STextFormFieldTheme.darkLabelStyle
                  : STextFormFieldTheme.lightLabelStyle,
            ),
            const SizedBox(height: SSizes.sm),
            TextFormField(
              obscureText: true,
              style: TextStyle(
                color: dark ? Colors.white : Colors.black,
                fontSize: SSizes.fontSizeMd,
                fontWeight: FontWeight.w500,
              ),
              decoration: const InputDecoration(
                hintText: '••••••••',
                prefixIcon: Icon(Icons.lock_outline),
                suffixIcon: Icon(Icons.visibility_off_outlined),
              ),
            ),

            const SizedBox(height: SSizes.spaceBtwInputFields / 2),

            // Remember Me & Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(
                      STexts.rememberMe,
                      style: TextStyle(
                        color: dark ? Colors.white : Colors.black,
                        fontSize: SSizes.fontSizeMd,
                      ),
                    ),
                  ],
                ),

                // Forgot Password
                TextButton(
                  onPressed: () {},
                  child: Text(
                    STexts.forgetPassword,
                    style: TextStyle(
                      color: dark ? Colors.white : Colors.black,
                      fontSize: SSizes.fontSizeSm,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: SSizes.spaceBtwInputFields),

            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  STexts.signIn,
                  style: TextStyle(
                    fontSize: SSizes.fontSizeLg,
                    fontWeight: FontWeight.w700,
                    color: dark ? Colors.black : Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}