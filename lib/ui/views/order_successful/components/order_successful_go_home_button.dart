/*
Author: XamDesign
Date: 3.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/core/widgets/custom_submit_button.dart';
import 'package:xam_shoes_app/ui/views/navigation/navigation_screen.dart';

class OrderSuccessfulGoHomeButton extends BaseStatelessWidget {
  const OrderSuccessfulGoHomeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        DeviceUtils.getDynamicWidth(context, 0.05),
      ),
      child: CustomSubmitButton(
        title: TranslationKeys.goHome.tr,
        onTap: () {
          BaseController.navigationController.reset();
          BaseController.cartController.reset();
          Get.offAll(
            () => const NavigationScreen(),
          );
        },
      ),
    );
  }
}
