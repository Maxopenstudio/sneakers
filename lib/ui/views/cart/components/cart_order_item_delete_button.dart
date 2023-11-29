/*
Author: XamDesign
Date: 1.06.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/core/widgets/custom_warning_alert/custom_warning_alert.dart';

class CartOrderItemDeleteButton extends StatelessWidget {
  final int index;

  const CartOrderItemDeleteButton({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DeviceUtils.getDynamicHeight(context, 0.07),
      child: FloatingActionButton(
        onPressed: () {
          HapticFeedback.heavyImpact();
          showDialog(
            context: context,
            builder: (BuildContext context) => CustomWarningAlert(
              title: TranslationKeys.removeItemWarning.tr,
              onYesPressed: () {
                BaseController.cartController.deleteItemFromCart(index);
                Get.back();
              },
            ),
          );
        },
        backgroundColor: kRedColor,
        child: SvgPicture.asset(
          "assets/images/trash.svg",
          width: 24,
          height: 24,
        ),
      ),
    );
  }
}
