/*
Author: XamDesign
Date: 24.05.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/data/shoe_list.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/categories/components/categories_shoe_item.dart';

class CategoriesShoeList extends StatelessWidget {
  const CategoriesShoeList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
      ),
      child: ListView.builder(
        itemCount: shoeList.length,
        itemBuilder: (context, index) => CategoriesShoeItem(index: index),
      ),
    );
  }
}
