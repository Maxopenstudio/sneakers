/*
Author: XamDesign
Date: 27.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/data/filter_type_list.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/home/components/home_filter_square_item.dart';

class HomeFilterTypeList extends StatelessWidget {
  const HomeFilterTypeList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: DeviceUtils.getWidth(context),
      height: DeviceUtils.getDynamicHeight(context, 0.09),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: filterTypeList.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Row(
              children: [
                SizedBox(
                  width: DeviceUtils.getDynamicWidth(context, 0.05),
                ),
                _homeFilterTypeItem(index),
              ],
            );
          } else {
            return _homeFilterTypeItem(index);
          }
        },
      ),
    );
  }

  Obx _homeFilterTypeItem(int index) {
    return Obx(
      () => HomeFilterSquareItem(
        icon: filterTypeList[index].icon,
        borderColor:
            BaseController.homeController.filterTypeIndex.value == index
                ? kLightBlueColor
                : BaseController.themeController.isDark.value
                    ? kDarkFieldColor
                    : kLightBackgroundColor,
        borderWidth:
            BaseController.homeController.filterTypeIndex.value == index
                ? 1
                : 0,
        onTap: () => BaseController.homeController.changeFilterType(index),
      ),
    );
  }
}
