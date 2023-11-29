import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/models/shoe_model.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';

class ShoeItemCartButton extends StatefulWidget {
  final Shoe shoeModel;

  const ShoeItemCartButton({required this.shoeModel, super.key});

  @override
  State<ShoeItemCartButton> createState() => _ShoeItemCartButtonState();
}

class _ShoeItemCartButtonState extends State<ShoeItemCartButton> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      bottom: 0,
      child: InkResponse(
        onTap: () async {
          final result =
              BaseController.cartController.addItemToCart(widget.shoeModel.id);
          if (result) {
            HapticFeedback.lightImpact();
            widget.shoeModel.isAddedToCartDone.value = true;
          }
          await Future.delayed(const Duration(milliseconds: 500), () {
            widget.shoeModel.isAddedToCartDone.value = false;
          });
        },
        radius: 10,
        containedInkWell: true,
        child: SizedBox(
          height: 25,
          width: 25,
          child: Obx(() {
            return Center(
              child: SvgPicture.asset(
                widget.shoeModel.isAddedToCartDone.value
                    ? "assets/images/check.svg"
                    : "assets/images/cart.svg",
                height: 20,
                width: 20,
                colorFilter: ColorFilter.mode(
                  BaseController.themeController.isDark.value
                      ? kWhiteColor
                      : kLightTextPrimaryColor,
                  BlendMode.srcIn,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
