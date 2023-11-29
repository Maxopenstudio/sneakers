/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/data/shoe_list.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/core/widgets/custom_material_button.dart';
import 'package:xam_shoes_app/ui/views/detail/detail_screen.dart';
import 'package:xam_shoes_app/ui/views/shoe/shoe_price.dart';

class CategoriesShoeItem extends StatelessWidget {
  final int index;

  const CategoriesShoeItem({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => DetailScreen(shoe: shoeList[index])),
      child: Container(
        width: DeviceUtils.getWidth(context),
        height: DeviceUtils.getDynamicHeight(context, 0.2),
        margin: const EdgeInsets.symmetric(vertical: 16.0),
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: BaseController.themeController.isDark.value
              ? kDarkFieldColor
              : kLightFieldColor,
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShoePrice(shoeIndex: index),
                  const SizedBox(height: 4.0),
                  CustomMaterialButton(
                    backgroundColor: kLightBlueColor,
                    borderRadius: BorderRadius.circular(48.0),
                    onTap: () =>
                        Get.to(() => DetailScreen(shoe: shoeList[index])),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 8.0,
                      ),
                      child: Text(
                        TranslationKeys.view.tr,
                        style: context.textTheme.bodyMedium?.copyWith(
                          color: kWhiteColor,
                          fontWeight: FontWeight.w600,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Image.asset(
                shoeList[index].images.first,
                height: DeviceUtils.getDynamicHeight(context, 0.2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
