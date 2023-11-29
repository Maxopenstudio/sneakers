/*
Author: XamDesign
Date: 7.06.2023
*/

import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:get/get_utils/get_utils.dart';

class TrackOrderDeliveryInfoPoint extends StatelessWidget {
  final bool isDelivery;
  final String title;
  final String description;

  const TrackOrderDeliveryInfoPoint({
    required this.isDelivery,
    required this.title,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.03),
        vertical: 16.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: 36.0,
              height: 36.0,
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: isDelivery
                    ? BaseController.themeController.isDark.value
                        ? kDarkFieldColor
                        : kLightFieldColor
                    : kLightBlueColor,
                shape: BoxShape.circle,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: isDelivery ? kLightBlueColor : kWhiteColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: kLightTextSecondaryColor,
                  ),
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    if (isDelivery)
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.access_time_rounded,
                          color: BaseController.themeController.isDark.value
                              ? kDarkTextColor
                              : kLightTextPrimaryColor,
                        ),
                      ),
                    Expanded(
                      child: Text(
                        description,
                        style: context.textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
