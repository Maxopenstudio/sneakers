/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/models/shoe_model.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/widgets/custom_material_button.dart';
import 'package:xam_shoes_app/ui/views/detail/detail_screen.dart';

class SearchLastSeenItem extends StatelessWidget {
  final Shoe shoe;

  const SearchLastSeenItem({
    required this.shoe,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Center(
        child: Container(
          width: 96,
          height: 96,
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: CustomMaterialButton(
            backgroundColor: BaseController.themeController.isDark.value
                ? kDarkFieldColor
                : kLightFieldColor,
            borderRadius: BorderRadius.circular(16.0),
            onTap: () {
              Get.to(() => DetailScreen(shoe: shoe));
            },
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                shoe.images.first,
                width: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
