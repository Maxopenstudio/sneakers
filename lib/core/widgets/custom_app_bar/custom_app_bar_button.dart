/*
Author: XamDesign
Date: 29.05.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';

class CustomAppBarButton extends BaseStatelessWidget {
  final String icon;
  final double iconSize;
  final VoidCallback onPressed;
  final bool isTransparent;

  const CustomAppBarButton({
    required this.icon,
    required this.onPressed,
    super.key,
    this.iconSize = 12,
    this.isTransparent = true,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => IconButton(
        onPressed: onPressed,
        style: IconButton.styleFrom(
          backgroundColor: isTransparent ? Colors.transparent : kWhiteColor,
          shape: CircleBorder(
            side: BorderSide(
              color: BaseController.themeController.isDark.value
                  ? kDarkStrokeColor
                  : kLightTextSecondaryColor.withOpacity(0.2),
              width: 1,
            ),
          ),
        ),
        icon: SvgPicture.asset(
          icon,
          width: iconSize,
          colorFilter: ColorFilter.mode(
            isTransparent
                ? BaseController.themeController.isDark.value
                    ? kWhiteColor
                    : kLightTextPrimaryColor
                : kLightTextPrimaryColor,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
