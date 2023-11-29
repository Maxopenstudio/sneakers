/*
Author: XamDesign
Date: 8.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/core/widgets/custom_submit_button.dart';

class CardsDoneButton extends BaseStatelessWidget {
  final VoidCallback onTap;

  const CardsDoneButton({
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: CustomSubmitButton(
        title: TranslationKeys.done.tr,
        onTap: onTap,
      ),
    );
  }
}
