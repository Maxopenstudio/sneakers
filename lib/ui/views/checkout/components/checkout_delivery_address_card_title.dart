/*
Author: XamDesign
Date: 3.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class CheckoutDeliveryAddressCardTitle extends StatelessWidget {
  const CheckoutDeliveryAddressCardTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Home Address",
      style: context.textTheme.titleMedium,
    );
  }
}
