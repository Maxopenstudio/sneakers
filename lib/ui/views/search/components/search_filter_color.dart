/*
Author: XamDesign
Date: 27.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/core/widgets/custom_bottom_sheet/custom_bottom_sheet_subtitle.dart';
import 'package:xam_shoes_app/ui/views/search/components/search_filter_color_picker.dart';

class SearchFilterColor extends StatelessWidget {
  const SearchFilterColor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomBottomSheetSubtitle(title: TranslationKeys.color.tr),
          const SearchFilterColorPicker(),
        ],
      ),
    );
  }
}
