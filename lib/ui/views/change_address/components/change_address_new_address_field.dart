/*
Author: XamDesign
Date: 22.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/widgets/custom_text_field/custom_multiline_text_field_with_title.dart';

class ChangeAddressNewAddressField extends StatelessWidget {
  const ChangeAddressNewAddressField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: CustomMultilineTextFieldWithTitle(
        title: TranslationKeys.newAddressTitle.tr,
        hintText: TranslationKeys.newAddressHint.tr,
        maxLines: 2,
      ),
    );
  }
}
