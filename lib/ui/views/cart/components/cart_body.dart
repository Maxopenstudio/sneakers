/*
Author: XamDesign
Date: 30.05.2023
*/

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/cart/components/cart_checkout_button.dart';
import 'package:xam_shoes_app/ui/views/cart/components/cart_order_list.dart';
import 'package:xam_shoes_app/ui/views/cart/components/cart_title.dart';
import 'package:xam_shoes_app/ui/views/cart/components/cart_total.dart';

class CartBody extends StatelessWidget {
  const CartBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DeviceUtils.getHeight(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SlideInLeft(from: 10, child: const CartTitle()),
              Expanded(
                  child: SlideInRight(
                      from: 10, child: const CartCheckoutButton())),
            ],
          ),
          Expanded(
              flex: 4, child: FadeInUp(from: 10, child: const CartOrderList())),
          const CartTotal(),
          const Spacer(),
          // const Spacer(),
        ],
      ),
    );
  }
}
