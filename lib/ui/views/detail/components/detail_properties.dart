/*
Author: XamDesign
Date: 30.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/models/shoe_model.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/detail/components/detail_property_text.dart';

class DetailProperties extends StatefulWidget {
  final Shoe shoe;

  const DetailProperties({
    required this.shoe,
    super.key,
  });

  @override
  State<DetailProperties> createState() => _DetailPropertiesState();
}

class _DetailPropertiesState extends State<DetailProperties> {
  @override
  void dispose() {
    BaseController.detailController.showDetails.value = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
        vertical: 16.0,
      ),
      child: Obx(() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TranslationKeys.structure.tr,
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16.0),
            DetailPropertyText(
              title: "${TranslationKeys.outerMaterial.tr}:",
              description: widget.shoe.outerMaterial,
            ),
            DetailPropertyText(
              title: "${TranslationKeys.lining.tr}:",
              description: widget.shoe.lining,
            ),
            DetailPropertyText(
              title: "${TranslationKeys.sole.tr}:",
              description: widget.shoe.sole,
            ),
            Offstage(
              offstage: !BaseController.detailController.showDetails.value,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DetailPropertyText(
                    title: "${TranslationKeys.brand.tr}:",
                    description: widget.shoe.brand,
                  ),
                  DetailPropertyText(
                    title: "${TranslationKeys.gender.tr}:",
                    description: widget.shoe.gender,
                  ),
                  DetailPropertyText(
                    title: "${TranslationKeys.year.tr}:",
                    description: widget.shoe.releaseYear,
                  ),
                ],
              ),
            ),
            Offstage(
              offstage: BaseController.detailController.showDetails.value,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: GestureDetector(
                  onTap: () {
                    BaseController.detailController.showDetails.value =
                        !BaseController.detailController.showDetails.value;
                  },
                  child: Text(
                    "... ${TranslationKeys.details.tr}",
                    style: context.textTheme.titleSmall?.copyWith(
                      color: kLightBlueColor,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
