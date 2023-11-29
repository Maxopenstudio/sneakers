/*
Author: XamDesign
Date: 9.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/core/widgets/custom_submit_button.dart';

class LoginLoginButton extends BaseStatelessWidget {
  final VoidCallback onTap;

  const LoginLoginButton({
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomSubmitButton(
      title: TranslationKeys.login.tr,
      onTap: onTap,
    );
  }
}
