/*
Author: XamDesign
Date: 5.06.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/widgets/custom_text_field/custom_text_field_with_title.dart';

class AccountEmailField extends StatelessWidget {
  const AccountEmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: CustomTextFieldWithTitle(
        title: TranslationKeys.emailTitle.tr,
        hintText: TranslationKeys.emailHint.tr,
        keyboardType: TextInputType.emailAddress,
        inputFormatters: [
          FilteringTextInputFormatter.deny(RegExp(r"\s")),
        ],
        validator: (value) {
          if (!GetUtils.isEmail(value!)) {
            return TranslationKeys.wrongEmail.tr;
          }
          return null;
        },
        textInputAction: TextInputAction.next,
      ),
    );
  }
}
