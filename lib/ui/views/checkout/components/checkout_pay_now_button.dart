/*
Author: XamDesign
Date: 3.06.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/core/widgets/custom_submit_button.dart';
import 'package:xam_shoes_app/ui/views/order_successful/order_successful_screen.dart';

class CheckoutPayNowButton extends StatelessWidget {
  const CheckoutPayNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.05),
        vertical: 16.0,
      ),
      child: CustomSubmitButton(
          title: TranslationKeys.payNow.tr,
          onTap: () {
            HapticFeedback.heavyImpact();
            Get.offAll(() => const OrderSuccessfulScreen());
          }),
    );
  }
}
