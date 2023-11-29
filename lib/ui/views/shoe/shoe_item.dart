/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/data/shoe_list.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/detail/detail_screen.dart';
import 'package:xam_shoes_app/ui/views/shoe/shoe_item_cart.dart';
import 'package:xam_shoes_app/ui/views/shoe/shoe_item_fav_button.dart';
import 'package:xam_shoes_app/ui/views/shoe/shoe_item_image.dart';
import 'package:xam_shoes_app/ui/views/shoe/shoe_price.dart';
import 'package:xam_shoes_app/ui/views/shoe/shoe_stock_left.dart';

class ShoeItemView extends StatelessWidget {
  final int index;
  final bool showColor;

  const ShoeItemView({
    required this.index,
    this.showColor = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => DetailScreen(shoe: shoeList[index])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () {
              return Container(
                width: DeviceUtils.getWidth(context),
                height: DeviceUtils.getDynamicHeight(context, 0.2),
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: BaseController.themeController.isDark.value
                        ? kDarkStrokeColor
                        : kLightTextSecondaryColor.withOpacity(0.2),
                    width: 1,
                  ),
                  color: BaseController.themeController.isDark.value
                      ? kDarkFieldColor
                      : kLightFieldColor,
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Stack(
                  children: [
                    ShoeItemImage(index: index),
                    ShoeItemFavButton(index: index),
                    ShoeItemCartButton(
                      shoeModel: shoeList[index],
                    ),
                    if (shoeList[index].stock < 5) ShoeStockLeft(index: index),
                  ],
                ),
              );
            },
          ),
          ShoePrice(shoeIndex: index),
          if (showColor)
            Row(
              children: shoeList[index]
                  .colors
                  .map(
                    (color) => Container(
                      width: 16,
                      height: 16,
                      margin: const EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                        color: color,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                  .toList(),
            ),
        ],
      ),
    );
  }
}
