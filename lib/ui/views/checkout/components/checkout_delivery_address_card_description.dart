/*
Author: XamDesign
Date: 3.06.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:get/get_utils/get_utils.dart';

class CheckoutDeliveryAddressCardDescription extends StatelessWidget {
  const CheckoutDeliveryAddressCardDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Toodely Benson Allentown, New Mexico 31134.",
      style: context.textTheme.bodyMedium?.copyWith(
        color: kLightTextSecondaryColor,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
