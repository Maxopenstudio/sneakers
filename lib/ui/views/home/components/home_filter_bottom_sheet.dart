/*
Author: XamDesign
Date: 26.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/widgets/custom_bottom_sheet/custom_bottom_sheet.dart';
import 'package:xam_shoes_app/ui/views/home/components/home_filter_apply_button.dart';
import 'package:xam_shoes_app/ui/views/home/components/home_filter_categories.dart';
import 'package:xam_shoes_app/ui/views/home/components/home_filter_price_range.dart';
import 'package:xam_shoes_app/ui/views/home/components/home_filter_type.dart';

class HomeFilterBottomSheet extends StatefulWidget {
  const HomeFilterBottomSheet({
    super.key,
  });

  @override
  State<HomeFilterBottomSheet> createState() => _HomeFilterBottomSheetState();
}

class _HomeFilterBottomSheetState extends State<HomeFilterBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      title: TranslationKeys.filters.tr.toUpperCase(),
      content: const Column(
        children: [
          HomeFilterPriceRange(),
          HomeFilterType(),
          HomeFilterCategories(),
          SizedBox(height: 16.0),
          HomeFilterApplyButton(),
        ],
      ),
    );
  }
}
