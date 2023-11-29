/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/home/components/home_category_item.dart';

class HomeCategoryList extends StatelessWidget {
  const HomeCategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DeviceUtils.getWidth(context),
      height: DeviceUtils.getDynamicHeight(context, 0.06),
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: const [
          HomeCategoryItem(
            category: 0,
            icon: "",
            title: "All",
          ),
          HomeCategoryItem(
            category: 1,
            icon: "assets/images/nike_logo.svg",
            title: "Nike",
          ),
          HomeCategoryItem(
            category: 2,
            icon: "assets/images/adidas_logo.svg",
            title: "Adidas",
          ),
          HomeCategoryItem(
            category: 3,
            icon: "assets/images/puma_logo.svg",
            title: "Puma",
          ),
          HomeCategoryItem(
            category: 4,
            icon: "assets/images/nike_logo.svg",
            title: "Nike",
          ),
          HomeCategoryItem(
            category: 5,
            icon: "assets/images/adidas_logo.svg",
            title: "Adidas",
          ),
          HomeCategoryItem(
            category: 6,
            icon: "assets/images/puma_logo.svg",
            title: "Puma",
          ),
        ],
      ),
    );
  }
}
