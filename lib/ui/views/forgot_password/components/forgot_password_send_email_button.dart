/*
Author: XamDesign
Date: 9.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/core/widgets/custom_submit_button.dart';

class ForgotPasswordSendEmailButton extends BaseStatelessWidget {
  final VoidCallback onTap;

  const ForgotPasswordSendEmailButton({
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomSubmitButton(
      title: TranslationKeys.sendEmail.tr,
      onTap: onTap,
    );
  }
}
