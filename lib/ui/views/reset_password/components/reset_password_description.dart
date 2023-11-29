/*
Author: XamDesign
Date: 22.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/translations/translation_keys.dart';

class ResetPasswordDescription extends StatelessWidget {
  const ResetPasswordDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      TranslationKeys.resetPasswordDescription.tr,
      style: context.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
