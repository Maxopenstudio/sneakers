/*
Author: XamDesign
Date: 22.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/core/widgets/custom_text_field/custom_text_field_with_title.dart';

class ChangePasswordRecentPasswordField extends BaseStatelessWidget {
  const ChangePasswordRecentPasswordField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: DeviceUtils.getDynamicWidth(context, 0.02),
      ),
      child: CustomTextFieldWithTitle(
        title: TranslationKeys.recentPasswordTitle.tr,
        hintText: TranslationKeys.recentPasswordHint.tr,
        obscureText: true,
        textInputAction: TextInputAction.next,
        onChanged: (val) =>
            BaseController.settingsController.setRecentPassword(val),
      ),
    );
  }
}
