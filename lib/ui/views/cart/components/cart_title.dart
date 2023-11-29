/*
Author: XamDesign
Date: 1.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/core/widgets/custom_title.dart';

class CartTitle extends StatelessWidget {
  const CartTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
          vertical: DeviceUtils.getDynamicHeight(context, 0.02),
        ),
        child: CustomTitle(
          titleTop: TranslationKeys.cartTitleLine1.tr,
          titleBottom: TranslationKeys.cartTitleLine2.trParams({
            "count":
                BaseController.cartController.cartItemList.length.toString(),
          }),
        ),
      ),
    );
  }
}
