/*
Author: XamDesign
Date: 1.06.2023
*/

import 'package:flutter/material.dart';
import 'package:xam_shoes_app/ui/views/checkout/components/checkout_divider.dart';
import 'package:xam_shoes_app/ui/views/checkout/components/checkout_shipping_cost.dart';
import 'package:xam_shoes_app/ui/views/checkout/components/checkout_subtotal.dart';
import 'package:xam_shoes_app/ui/views/checkout/components/checkout_total.dart';

class CheckoutTotalInfo extends StatelessWidget {
  const CheckoutTotalInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CheckoutSubtotal(),
        CheckoutShippingCost(),
        CheckoutDivider(),
        CheckoutTotal(),
      ],
    );
  }
}
