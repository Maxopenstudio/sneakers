/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/base/base_statefull.dart';

class NavigationItem extends StatefulWidget {
  final int index;
  final String icon;

  const NavigationItem({
    required this.index,
    required this.icon,
    super.key,
  });

  @override
  State<NavigationItem> createState() => _NavigationItemState();
}

class _NavigationItemState extends BaseState<NavigationItem> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        width: 40,
        height: 40,
        child: IconButton(
          onPressed: () {
            if (BaseController.navigationController.selectedIndex.value ==
                widget.index) {
              return;
            }
            HapticFeedback.selectionClick();
            BaseController.navigationController.changeScreen(widget.index);
          },
          style: IconButton.styleFrom(
            backgroundColor:
                BaseController.navigationController.selectedIndex.value ==
                        widget.index
                    ? kWhiteColor
                    : kLightTextPrimaryColor,
          ),
          icon: Stack(
            children: [
              SvgPicture.asset(
                widget.icon,
                colorFilter: ColorFilter.mode(
                  BaseController.navigationController.selectedIndex.value ==
                          widget.index
                      ? kLightTextPrimaryColor
                      : kWhiteColor,
                  BlendMode.srcIn,
                ),
              ),
              if (widget.index == 2 &&
                  BaseController.cartController.cartItemList.isNotEmpty)
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
