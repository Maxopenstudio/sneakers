/*
Author: XamDesign
Date: 1.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/widgets/custom_material_button.dart';

class CartOrderItemPieceButton extends StatelessWidget {
  final int index;
  final IconData icon;
  final VoidCallback onTap;

  const CartOrderItemPieceButton({
    required this.index,
    required this.icon,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomMaterialButton(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      borderRadius: BorderRadius.circular(48.0),
      onTap: onTap,
      child: Icon(
        icon,
        size: 24.0,
        color: kLightBlueColor,
      ),
    );
  }
}
