/*
Author: XamDesign
Date: 9.06.2023
*/

import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:get/get_utils/get_utils.dart';

class ProfileInfoText extends BaseStatelessWidget {
  final String title;
  final String text;

  const ProfileInfoText({
    required this.title,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DeviceUtils.getWidth(context),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: context.textTheme.titleSmall?.copyWith(
              color: kLightTextSecondaryColor,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 8.0),
          Container(
            width: DeviceUtils.getWidth(context),
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(48.0),
              color: BaseController.themeController.isDark.value
                  ? kDarkFieldColor
                  : kLightFieldColor,
            ),
            child: Text(
              text,
              style: context.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
