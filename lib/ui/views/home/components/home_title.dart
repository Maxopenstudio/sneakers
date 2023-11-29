/*
Author: XamDesign
Date: 24.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/core/widgets/custom_title.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
        vertical: DeviceUtils.getDynamicHeight(context, 0.01),
      ),
      child: CustomTitle(
        titleTop: TranslationKeys.homeTitleLine1.trParams({
          "product": "Nike",
        }),
        titleBottom: TranslationKeys.products.tr,
      ),
    );
  }
}
