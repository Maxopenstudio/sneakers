/*
Author: XamDesign
Date: 3.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:xam_shoes_app/ui/views/checkout/components/checkout_delivery_address_card_description.dart';
import 'package:xam_shoes_app/ui/views/checkout/components/checkout_delivery_address_card_edit_button.dart';
import 'package:xam_shoes_app/ui/views/checkout/components/checkout_delivery_address_card_title.dart';

class CheckoutDeliveryAddressCard extends StatelessWidget {
  const CheckoutDeliveryAddressCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 80.0,
          width: 80.0,
          margin: const EdgeInsets.only(right: 8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24.0),
            image: const DecorationImage(
              image: AssetImage("assets/images/map.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: IconButton(
              style: IconButton.styleFrom(
                padding: EdgeInsets.zero,
                alignment: Alignment.center,
                backgroundColor: context.theme.scaffoldBackgroundColor,
              ),
              icon: const Icon(Icons.location_on_outlined),
              color: context.theme.primaryColor,
              onPressed: () {},
            ),
          ),
        ),
        const SizedBox(width: 8.0),
        const Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CheckoutDeliveryAddressCardTitle(),
              SizedBox(height: 8.0),
              CheckoutDeliveryAddressCardDescription(),
            ],
          ),
        ),
        const SizedBox(width: 8.0),
        const CheckoutDeliveryAddressCardEditButton(),
      ],
    );
  }
}
