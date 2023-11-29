/*
Author: XamDesign
Date: 23.05.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/ui/views/sign_in/sign_in_screen.dart';

class LoginSignInButton extends StatelessWidget {
  const LoginSignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: () {
          HapticFeedback.lightImpact();
          Get.to(
                () => const SignInScreen(),
          );
        },
        child: Text(
          TranslationKeys.dontHaveAccountSignIn.tr,
          style: context.textTheme.bodyMedium?.copyWith(
            color: kLightTextSecondaryColor,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
