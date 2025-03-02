import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skilltap/utils/constants/colors.dart';
import 'package:skilltap/utils/helpers/helpers.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final dark = SHelperFunctions.isDarkMode(context);

        return GestureDetector(
          onTap: onPressed ?? () {
            if (context.canPop()) {
              context.pop();
            }
          },
          child: Container(
            width: 39,
            height: 39,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: dark ? SAppColors.darkGrey : const Color(0xFFD8DADC),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 16,
              color: dark ? Colors.white : Colors.black,
            ),
          ),
        );
      },
    );
  }
}
