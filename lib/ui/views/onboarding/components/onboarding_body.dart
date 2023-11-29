/*
Author: XamDesign
Date: 31.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/onboarding/components/onboarding_description_text.dart';
import 'package:xam_shoes_app/ui/views/onboarding/components/onboarding_image.dart';
import 'package:xam_shoes_app/ui/views/onboarding/components/onboarding_title.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: DeviceUtils.getDynamicHeight(context, 0.05),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(flex: 2, child: OnboardingImage()),
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
                vertical: 16.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const OnboardingTitle(),
                  OnboardingDescriptionText(
                    text: TranslationKeys.onboardingDescription.tr,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
