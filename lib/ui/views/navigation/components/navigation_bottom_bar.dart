/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/navigation/components/navigation_item.dart';

class NavigationBottomBar extends StatelessWidget {
  const NavigationBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: DeviceUtils.getDynamicHeight(context, 0.08),
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        color: kLightTextPrimaryColor,
        borderRadius: BorderRadius.circular(36.0),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavigationItem(index: 0, icon: "assets/images/home.svg"),
          NavigationItem(index: 1, icon: "assets/images/discover.svg"),
          NavigationItem(index: 2, icon: "assets/images/cart.svg"),
          NavigationItem(index: 3, icon: "assets/images/message.svg"),
          NavigationItem(index: 4, icon: "assets/images/profile.svg"),
        ],
      ),
    );
  }
}
