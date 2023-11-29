/*
Author: XamDesign
Date: 27.05.2023
*/

import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/data/filter_size_list.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/search/components/search_filter_select_size_item.dart';

class SearchFilterSelectSizeList extends StatelessWidget {
  const SearchFilterSelectSizeList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DeviceUtils.getDynamicHeight(context, 0.09),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: filterSizeList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
                left: index == 0
                    ? DeviceUtils.getDynamicWidth(context, 0.025)
                    : 0),
            child: SearchFilterSelectSizeItem(index: index),
          );
        },
      ),
    );
  }
}
