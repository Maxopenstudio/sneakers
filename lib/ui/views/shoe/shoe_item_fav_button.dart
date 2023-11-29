import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/data/shoe_list.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';

class ShoeItemFavButton extends StatefulWidget {
  final int index;

  const ShoeItemFavButton({required this.index, super.key});

  @override
  State<ShoeItemFavButton> createState() => _ShoeItemFavButtonState();
}

class _ShoeItemFavButtonState extends State<ShoeItemFavButton> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      top: 0,
      child: InkResponse(
        onTap: () {
          HapticFeedback.selectionClick();
          shoeList[widget.index].isFavorite.value =
              (!shoeList[widget.index].isFavorite.value);
        },
        radius: 10,
        containedInkWell: true,
        child: Obx(() {
          return Center(
            child: SizedBox(
              height: 25,
              width: 25,
              child: Icon(
                shoeList[widget.index].isFavorite.value
                    ? Icons.favorite
                    : Icons.favorite_border,
                size: 20,
                color: BaseController.themeController.isDark.value
                    ? kWhiteColor
                    : kLightTextPrimaryColor,
              ),
            ),
          );
        }),
      ),
    );
  }
}
