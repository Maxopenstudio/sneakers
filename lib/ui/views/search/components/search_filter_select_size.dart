/*
Author: XamDesign
Date: 27.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/core/widgets/custom_bottom_sheet/custom_bottom_sheet_subtitle.dart';
import 'package:xam_shoes_app/ui/views/search/components/search_filter_select_size_list.dart';

class SearchFilterSelectSize extends StatelessWidget {
  const SearchFilterSelectSize({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
            vertical: 8.0,
          ),
          child:
              CustomBottomSheetSubtitle(title: TranslationKeys.selectSize.tr),
        ),
        const SearchFilterSelectSizeList(),
      ],
    );
  }
}
