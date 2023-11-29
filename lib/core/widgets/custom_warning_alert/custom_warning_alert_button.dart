/*
Author: XamDesign
Date: 5.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';

class CustomWarningAlertButton extends StatelessWidget {
  final String title;
  final bool isRemove;

  const CustomWarningAlertButton({
    required this.onTap,
    required this.title,
    super.key,
    this.isRemove = false,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 16.0,
          ),
          decoration: BoxDecoration(
            border: Border(
              left: !isRemove
                  ? const BorderSide(
                      color: kLightTextSecondaryColor,
                      width: 0.5,
                    )
                  : BorderSide.none,
            ),
          ),
          child: Center(
            child: Text(
              title,
              style: context.textTheme.bodyMedium?.copyWith(
                color: isRemove
                    ? kRedColor
                    : BaseController.themeController.isDark.value
                        ? kWhiteColor
                        : kLightTextSecondaryColor,
                fontWeight: isRemove ? FontWeight.w600 : FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
