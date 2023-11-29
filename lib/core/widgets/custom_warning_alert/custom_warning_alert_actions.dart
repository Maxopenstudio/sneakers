/*
Author: XamDesign
Date: 5.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/widgets/custom_warning_alert/custom_warning_alert_button.dart';

class CustomWarningAlertActions extends StatelessWidget {
  final String? yesTitle;

  const CustomWarningAlertActions({
    required this.onYesPressed,
    super.key,
    this.yesTitle,
  });

  final VoidCallback onYesPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomWarningAlertButton(
          title: yesTitle ?? TranslationKeys.remove.tr,
          isRemove: true,
          onTap: onYesPressed,
        ),
        CustomWarningAlertButton(
          title: TranslationKeys.cancel.tr,
          onTap: () => Get.back(),
        ),
      ],
    );
  }
}
