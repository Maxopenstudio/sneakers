/*
Author: XamDesign
Date: 9.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/ui/views/profile/components/profile_info_text.dart';

class ProfileNameText extends BaseStatelessWidget {
  const ProfileNameText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ProfileInfoText(
      title: TranslationKeys.nameTitle.tr,
      text: "XamDesign",
    );
  }
}
