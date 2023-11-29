/*
Author: XamDesign
Date: 27.05.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/core/widgets/custom_material_button.dart';

class HomeFilterSquareItem extends StatelessWidget {
  final String icon;
  final Color borderColor;
  final double borderWidth;
  final VoidCallback onTap;

  const HomeFilterSquareItem({
    required this.icon,
    required this.borderColor,
    required this.onTap,
    super.key,
    this.borderWidth = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: CustomMaterialButton(
        backgroundColor: BaseController.themeController.isDark.value
            ? kDarkFieldColor
            : kLightTextSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(24.0),
        onTap: onTap,
        child: Container(
          width: DeviceUtils.getDynamicWidth(context, 0.18),
          decoration: BoxDecoration(
            border: Border.all(
              width: borderWidth,
              color: borderColor,
            ),
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Center(
            child: SvgPicture.asset(
              icon,
              width: 24,
              colorFilter: ColorFilter.mode(
                BaseController.themeController.isDark.value
                    ? kDarkTextColor
                    : kLightTextPrimaryColor,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
