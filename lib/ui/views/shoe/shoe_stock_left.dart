import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/data/shoe_list.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';

class ShoeStockLeft extends StatelessWidget {
  final int index;

  const ShoeStockLeft({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 4.0,
          vertical: 2.0,
        ),
        decoration: BoxDecoration(
          color: kLightBlueColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          "${TranslationKeys.last.tr}: ${shoeList[index].stock}",
          style: context.textTheme.labelSmall?.copyWith(
            color: kWhiteColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
