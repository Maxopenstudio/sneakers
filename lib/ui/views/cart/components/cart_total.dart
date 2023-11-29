/*
Author: XamDesign
Date: 1.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';

class CartTotal extends StatelessWidget {
  const CartTotal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
        vertical: 16.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            TranslationKeys.total.tr,
            style: Theme
                .of(context)
                .textTheme
                .labelMedium
                ?.copyWith(
              color: kLightTextSecondaryColor,
            ),
          ),
          Obx(
                () =>
                Text(
                  "\$ ${BaseController.cartController.cartTotal.toStringAsFixed(
                      2)}",
                  style: Theme
                      .of(context)
                      .textTheme
                      .titleMedium,
                ),
          ),
        ],
      ),
    );
  }
}
