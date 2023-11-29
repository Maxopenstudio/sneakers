/*
Author: XamDesign
Date: 30.05.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/core/widgets/custom_loading_button.dart';

class DetailAddToCartButton extends BaseStatelessWidget {
  final int shoeId;
  final String retailPrice;

  const DetailAddToCartButton({
    required this.shoeId,
    required this.retailPrice,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: RoundedLoadingButton(
        onPressed: () {
          final result = BaseController.cartController.addItemToCart(shoeId);

          if (result) {
            BaseController.cartController.addToCartButtonController.success();
          } else {
            BaseController.cartController.addToCartButtonController.error();
          }
        },
        height: 60,
        width: 150,
        successColor: kGreenColor,
        resetAfterDuration: true,
        resetDuration: const Duration(seconds: 1),
        color: kLightBlueColor,
        controller: BaseController.cartController.addToCartButtonController,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/shopping_bag.svg",
              width: 30,
              height: 30,
            ),
            const SizedBox(width: 5),
            Text(
              "\$ $retailPrice",
              style: context.textTheme.bodyLarge?.copyWith(
                color: kWhiteColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
