/*
Author: XamDesign
Date: 8.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/data/card_brand_list.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/cards/components/cards_add_card_button.dart';
import 'package:xam_shoes_app/ui/views/cards/components/cards_card_item.dart';

class CardsCardList extends BaseStatelessWidget {
  const CardsCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DeviceUtils.getDynamicHeight(context, 0.075),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cardBrandList.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Row(
              children: [
                SizedBox(width: DeviceUtils.getDynamicWidth(context, 0.05)),
                _cardsCardItem(index),
              ],
            );
          } else if (index == cardBrandList.length - 1) {
            return Row(
              children: [
                _cardsCardItem(index),
                const CardsAddCardButton(),
              ],
            );
          } else {
            return _cardsCardItem(index);
          }
        },
      ),
    );
  }

  Obx _cardsCardItem(int index) {
    return Obx(
      () => CardsCardItem(
        icon: cardBrandList[index].icon,
        borderColor:
            BaseController.cardsController.cardBrandIndex.value == index
                ? kLightBlueColor
                : BaseController.themeController.isDark.value
                    ? kDarkFieldColor
                    : kLightBackgroundColor,
        borderWidth:
            BaseController.cardsController.cardBrandIndex.value == index
                ? 1
                : 0,
        onTap: () => BaseController.cardsController.changeCardBrand(index),
      ),
    );
  }
}
