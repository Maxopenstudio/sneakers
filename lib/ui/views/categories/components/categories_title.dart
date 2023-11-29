/*
Author: XamDesign
Date: 5.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/data/category_list.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/core/widgets/custom_title.dart';

class CategoriesTitle extends StatelessWidget {
  const CategoriesTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
        vertical: DeviceUtils.getDynamicHeight(context, 0.02),
      ),
      child: Obx(
        () => CustomTitle(
          titleTop: TranslationKeys.categoryTitleLine1.tr,
          titleBottom: TranslationKeys.categoryTitleLine2.trParams(
            {
              "shoe": categoryList[
                      BaseController.categoriesController.categoryIndex.value]
                  .title,
            },
          ),
        ),
      ),
    );
  }
}
