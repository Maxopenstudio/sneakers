/*
Author: XamDesign
Date: 2.06.2023
*/

import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';

class CartOrderItemImage extends StatelessWidget {
  final String image;

  const CartOrderItemImage({
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DeviceUtils.getWidth(context),
      height: DeviceUtils.getDynamicHeight(context, 0.15),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: BaseController.themeController.isDark.value
            ? kDarkFieldColor
            : kLightFieldColor,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Image.asset(image),
    );
  }
}
