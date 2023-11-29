/*
Author: XamDesign
Date: 26.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/widgets/custom_bottom_sheet/custom_bottom_sheet.dart';
import 'package:xam_shoes_app/ui/views/search/components/search_filter_apply_button.dart';
import 'package:xam_shoes_app/ui/views/search/components/search_filter_color.dart';
import 'package:xam_shoes_app/ui/views/search/components/search_filter_price.dart';
import 'package:xam_shoes_app/ui/views/search/components/search_filter_select_size.dart';

class SearchFilterBottomSheet extends StatefulWidget {
  const SearchFilterBottomSheet({
    super.key,
  });

  @override
  State<SearchFilterBottomSheet> createState() =>
      _SearchFilterBottomSheetState();
}

class _SearchFilterBottomSheetState extends State<SearchFilterBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      title: TranslationKeys.filters.tr.toUpperCase(),
      content: const Column(
        children: [
          SearchFilterPrice(),
          SearchFilterColor(),
          SearchFilterSelectSize(),
          SizedBox(height: 8.0),
          SearchFilterApplyButton(),
        ],
      ),
    );
  }
}
