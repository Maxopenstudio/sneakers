/*
Author: XamDesign
Date: 30.05.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/ui/views/checkout/components/checkout_card_list.dart';
import 'package:xam_shoes_app/ui/views/checkout/components/checkout_delivery_address.dart';
import 'package:xam_shoes_app/ui/views/checkout/components/checkout_title.dart';
import 'package:xam_shoes_app/ui/views/checkout/components/checkout_total_info.dart';

class CheckoutBody extends StatelessWidget {
  const CheckoutBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CheckoutTitle(),
          CheckoutCardList(),
          CheckoutDeliveryAddress(),
          CheckoutTotalInfo(),
        ],
      ),
    );
  }
}
