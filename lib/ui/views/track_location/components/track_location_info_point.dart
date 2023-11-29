/*
Author: XamDesign
Date: 6.06.2023
*/

import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:get/get_utils/get_utils.dart';

class TrackLocationInfoPoint extends StatelessWidget {
  final bool isDelivery;
  final String title;
  final String address;

  const TrackLocationInfoPoint({
    required this.isDelivery,
    required this.title,
    required this.address,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
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
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: kLightTextSecondaryColor,
                  ),
                ),
                Text(address, style: context.textTheme.bodyLarge),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
