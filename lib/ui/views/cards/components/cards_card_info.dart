/*
Author: XamDesign
Date: 8.06.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/data/card_brand_list.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';

class CardsCardInfo extends BaseStatelessWidget {
  const CardsCardInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DeviceUtils.getWidth(context),
      height: DeviceUtils.getDynamicHeight(context, 0.3),
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/images/card.png"),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                      () =>
                      Text(
                        cardBrandList[
                        BaseController.cardsController.cardBrandIndex.value]
                            .name,
                        style: context.textTheme.titleMedium?.copyWith(
                          color: kWhiteColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                ),
                Image.asset("assets/images/card_chip.png", width: 48.0),
                Obx(
                      () =>
                      Text(
                        BaseController.cardsController.cardNumber.value,
                        style: context.textTheme.titleLarge?.copyWith(
                          color: kWhiteColor,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                ),
                Obx(
                      () =>
                      Text(
                        BaseController.cardsController.cardHolder.value,
                        style: context.textTheme.titleSmall?.copyWith(
                          color: kWhiteColor,
                        ),
                      ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(
                "assets/images/card_lines.svg",
                height: 24.0,
              ),
              Obx(
                    () =>
                    SvgPicture.asset(
                      cardBrandList[
                      BaseController.cardsController.cardBrandIndex.value]
                          .icon
                          .icon,
                      width: 48.0,
                      colorFilter: !cardBrandList[BaseController
                          .cardsController.cardBrandIndex.value]
                          .icon
                          .hasColor
                          ? const ColorFilter.mode(
                        kWhiteColor,
                        BlendMode.srcIn,
                      )
                          : null,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
