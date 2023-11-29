/*
Author: XamDesign
Date: 27.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/core/widgets/custom_bottom_sheet/custom_bottom_sheet_subtitle.dart';
import 'package:xam_shoes_app/ui/views/home/components/home_filter_type_list.dart';

class HomeFilterType extends StatelessWidget {
  const HomeFilterType({
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
            vertical: 4.0,
          ),
          child: CustomBottomSheetSubtitle(title: TranslationKeys.type.tr),
        ),
        const HomeFilterTypeList(),
      ],
    );
  }
}
