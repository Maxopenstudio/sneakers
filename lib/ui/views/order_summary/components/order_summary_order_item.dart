/*
Author: XamDesign
Date: 7.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/enums/order_status_enum.dart';
import 'package:xam_shoes_app/core/models/order_model.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/core/widgets/custom_material_button.dart';
import 'package:xam_shoes_app/ui/views/track_order/track_order_screen.dart';

class OrderSummaryOrderItem extends StatelessWidget {
  final Order order;

  const OrderSummaryOrderItem({
    required this.order,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => TrackOrderScreen(order: order)),
      child: Container(
        width: DeviceUtils.getWidth(context),
        margin: const EdgeInsets.symmetric(vertical: 16.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: BaseController.themeController.isDark.value
              ? kDarkFieldColor
              : kLightFieldColor,
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                width: DeviceUtils.getDynamicWidth(context, 0.2),
                height: DeviceUtils.getDynamicHeight(context, 0.1),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: BaseController.themeController.isDark.value
                      ? kDarkBackgroundColor.withOpacity(0.2)
                      : kWhiteColor,
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Image.asset(
                  order.product.images.first,
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    TranslationKeys.code.tr,
                    style: context.textTheme.bodyLarge?.copyWith(
                      color: kLightTextSecondaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    order.code,
                    style: context.textTheme.labelLarge,
                  ),
                  const SizedBox(height: 4.0),
                  CustomMaterialButton(
                    backgroundColor: order.status == OrderStatus.delivered
                        ? Theme
                        .of(context)
                        .scaffoldBackgroundColor
                        : kLightBlueColor,
                    borderRadius: BorderRadius.circular(48.0),
                    onTap: () => Get.to(() => TrackOrderScreen(order: order)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 8.0,
                      ),
                      child: Text(
                        order.status.enumToLocalizedString,
                        style: context.textTheme.bodyMedium?.copyWith(
                          color: order.status == OrderStatus.delivered
                              ? BaseController.themeController.isDark.value
                              ? kDarkTextColor
                              : kLightTextPrimaryColor
                              : kWhiteColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
