/*
Author: XamDesign
Date: 3.06.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/checkout/components/checkout_delivery_address_card.dart';
import 'package:xam_shoes_app/ui/views/checkout/components/checkout_delivery_address_title.dart';

class CheckoutDeliveryAddress extends StatelessWidget {
  const CheckoutDeliveryAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
        vertical: 16.0,
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CheckoutDeliveryAddressTitle(),
          CheckoutDeliveryAddressCard(),
        ],
      ),
    );
  }
}
