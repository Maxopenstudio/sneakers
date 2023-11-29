/*
Author: XamDesign
Date: 24.05.2023
*/

import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/data/shoe_list.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/shoe/shoe_item.dart';

class DiscoverShoeList extends StatelessWidget {
  const DiscoverShoeList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
      ),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 0,
          crossAxisSpacing: 15,
          childAspectRatio: DeviceUtils.getWidth(context) /
              DeviceUtils.getDynamicHeight(context, 0.90),
        ),
        itemCount: shoeList.length,
        itemBuilder: (context, index) => ShoeItemView(
          index: index,
          showColor: true,
        ),
      ),
    );
  }
}
