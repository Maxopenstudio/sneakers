/*
Author: XamDesign
Date: 31.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/core/widgets/custom_submit_button.dart';
import 'package:xam_shoes_app/ui/views/login/login_screen.dart';

class OnboardingGetStartedButton extends StatelessWidget {
  const OnboardingGetStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        DeviceUtils.getDynamicWidth(context, 0.05),
      ),
      child: CustomSubmitButton(
        title: TranslationKeys.getStarted.tr,
        onTap: () => Get.to(() => const LoginScreen()),
      ),
    );
  }
}
