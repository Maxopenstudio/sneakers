/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/data/category_list.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/widgets/custom_material_button.dart';

class CategoriesCategoryItem extends StatelessWidget {
  final int index;

  const CategoriesCategoryItem({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: CustomMaterialButton(
            backgroundColor:
                BaseController.categoriesController.categoryIndex.value == index
                    ? kRedColor
                    : BaseController.themeController.isDark.value
                        ? kDarkFieldColor
                        : kLightFieldColor,
            borderRadius: BorderRadius.circular(48.0),
            onTap: () {
              HapticFeedback.lightImpact();
              BaseController.categoriesController.changeCategory(index);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 32.0,
                vertical: 24.0,
              ),
              child: Text(
                categoryList[index].title,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: BaseController
                                  .categoriesController.categoryIndex.value ==
                              index
                          ? kWhiteColor
                          : BaseController.themeController.isDark.value
                              ? kWhiteColor
                              : Colors.black,
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
