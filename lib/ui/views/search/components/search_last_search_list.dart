/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/data/search_list.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/search/components/search_last_search_item.dart';

class SearchLastSearchList extends StatelessWidget {
  const SearchLastSearchList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: DeviceUtils.getHeight(context) * 0.38,
      width: DeviceUtils.getWidth(context),
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
        vertical: 16.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
            ),
            child: Text(
              TranslationKeys.lastSearch.tr,
              style: context.textTheme.titleMedium,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: searchList
                .map((e) => SearchLastSearchItem(
                      text: e,
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
