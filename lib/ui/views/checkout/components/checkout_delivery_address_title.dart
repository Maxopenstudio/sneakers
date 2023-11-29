/*
Author: XamDesign
Date: 3.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/translations/translation_keys.dart';

class CheckoutDeliveryAddressTitle extends StatelessWidget {
  const CheckoutDeliveryAddressTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        TranslationKeys.deliveryAddress.tr,
        style: context.textTheme.titleMedium,
      ),
    );
  }
}
