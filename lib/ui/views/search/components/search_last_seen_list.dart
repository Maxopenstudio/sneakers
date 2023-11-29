/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/data/shoe_list.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/search/components/search_last_seen_item.dart';

class SearchLastSeenList extends StatelessWidget {
  const SearchLastSeenList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: DeviceUtils.getWidth(context),
      height: DeviceUtils.getHeight(context) * 0.18,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
              vertical: 16.0,
            ),
            child: Text(
              TranslationKeys.lastSeen.tr,
              style: context.textTheme.titleMedium,
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: shoeList.length,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Row(
                    children: [
                      SizedBox(
                        width: DeviceUtils.getDynamicWidth(context, 0.05),
                      ),
                      SearchLastSeenItem(
                        shoe: shoeList[index],
                      ),
                    ],
                  );
                } else {
                  return SearchLastSeenItem(
                    shoe: shoeList[index],
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
