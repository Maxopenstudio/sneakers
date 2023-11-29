/*
Author: XamDesign
Date: 1.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';

class CartOrderItemPieceText extends StatelessWidget {
  final int index;

  const CartOrderItemPieceText({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
          () =>
          Text(
            BaseController.cartController.cartItemList[index].piece.toString(),
            style: context.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
    );
  }
}
