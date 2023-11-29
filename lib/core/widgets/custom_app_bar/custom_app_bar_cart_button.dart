/*
Author: XamDesign
Date: 13.06.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/base/base_statefull.dart';
import 'package:xam_shoes_app/ui/views/navigation/navigation_screen.dart';

class CustomAppBarCartButton extends StatefulWidget {
  const CustomAppBarCartButton({
    super.key,
  });

  @override
  State<CustomAppBarCartButton> createState() => _CustomAppBarCartButtonState();
}

class _CustomAppBarCartButtonState extends BaseState<CustomAppBarCartButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16.0),
      child: Obx(
        () => IconButton(
          onPressed: () {
            BaseController.navigationController.changeScreen(2);
            Get.offAll(() => const NavigationScreen());
            BaseController
                .navigationController.navigationScaffoldKey.currentState!
                .closeDrawer();
          },
          style: IconButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape: CircleBorder(
              side: BorderSide(
                color: BaseController.themeController.isDark.value
                    ? kDarkStrokeColor
                    : kLightTextSecondaryColor.withOpacity(0.2),
                width: 1,
              ),
            ),
          ),
          icon: Stack(
            children: [
              SvgPicture.asset(
                "assets/images/cart.svg",
                colorFilter: ColorFilter.mode(
                  BaseController.themeController.isDark.value
                      ? kWhiteColor
                      : kLightTextPrimaryColor,
                  BlendMode.srcIn,
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Transform.translate(
                  offset: const Offset(5, -5),
                  child: Container(
                    height: 18,
                    width: 18,
                    padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      border: Border.all(
                        color: kLightTextSecondaryColor,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(9.0),
                    ),
                    child: Center(
                      child: Obx(() {
                        return Text(
                          BaseController.cartController.cartItemList.length
                              .toString(),
                          style: context.textTheme.bodySmall?.copyWith(
                            color: kLightTextPrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0,
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
