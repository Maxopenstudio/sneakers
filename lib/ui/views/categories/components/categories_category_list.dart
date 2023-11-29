/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/data/category_list.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/categories/components/categories_category_item.dart';

class CategoriesCategoryList extends StatelessWidget {
  const CategoriesCategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: DeviceUtils.getWidth(context),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Row(
              children: [
                SizedBox(
                  width: DeviceUtils.getDynamicWidth(context, 0.05),
                ),
                CategoriesCategoryItem(index: index),
              ],
            );
          } else {
            return CategoriesCategoryItem(index: index);
          }
        },
      ),
      // child: ListView(
      //   scrollDirection: Axis.horizontal,
      //   children: [
      //     SizedBox(
      //       width: DeviceUtils.getDynamicWidth(context, 0.05),
      //     ),
      //     CategoriesCategoryItem(
      //       category: 0,
      //       title: "All",
      //     ),
      //     CategoriesCategoryItem(
      //       category: 1,
      //       title: "Nike",
      //     ),
      //     CategoriesCategoryItem(
      //       category: 2,
      //       title: "Adidas",
      //     ),
      //     CategoriesCategoryItem(
      //       category: 3,
      //       title: "Puma",
      //     ),
      //     CategoriesCategoryItem(
      //       category: 4,
      //       title: "Nike",
      //     ),
      //     CategoriesCategoryItem(
      //       category: 5,
      //       title: "Adidas",
      //     ),
      //     CategoriesCategoryItem(
      //       category: 6,
      //       title: "Puma",
      //     ),
      //   ],
      // ),
    );
  }
}
