/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:get/get_utils/get_utils.dart';

class NotificationItem extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final bool isNew;

  const NotificationItem({
    required this.title,
    required this.description,
    super.key,
    this.image = "",
    this.isNew = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: image.isNotEmpty
                ? Container(
                    width: DeviceUtils.getWidth(context),
                    height: DeviceUtils.getDynamicHeight(context, 0.15),
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: BaseController.themeController.isDark.value
                          ? kDarkFieldColor
                          : kLightFieldColor,
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Image.asset(image),
                  )
                : Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: kLightBlueColor,
                    ),
                    child: const Icon(
                      Icons.check_circle_outline_outlined,
                      size: 24.0,
                      color: kWhiteColor,
                    ),
                  ),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: context.textTheme.titleSmall,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: kLightTextSecondaryColor,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (isNew)
            Expanded(
              child: Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: kLightBlueColor,
                ),
              ),
            )
          else
            const Spacer(),
        ],
      ),
    );
  }
}
