/*
Author: XamDesign
Date: 5.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/data/shoe_list.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/core/widgets/custom_star_rate.dart';
import 'package:xam_shoes_app/ui/views/detail/detail_screen.dart';

class ScanShoeInfo extends StatelessWidget {
  const ScanShoeInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => DetailScreen(shoe: shoeList.first)),
      child: Container(
        height: DeviceUtils.getDynamicHeight(context, 0.2),
        margin: EdgeInsets.symmetric(
          horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
        ),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: BaseController.themeController.isDark.value
              ? kDarkFieldColor
              : kLightFieldColor,
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Row(
          children: [
            Expanded(child: Image.asset(shoeList.first.images.first)),
            const SizedBox(width: 16.0),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shoeList.first.model,
                    style: context.textTheme.labelLarge,
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    "${shoeList.first.gender} Running Shoes",
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: kLightTextSecondaryColor,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  CustomStarRate(key: UniqueKey(), value: 5.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
