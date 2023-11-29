/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/models/cart_item_model.dart';
import 'package:xam_shoes_app/ui/views/cart/components/cart_order_item_delete_button.dart';
import 'package:xam_shoes_app/ui/views/cart/components/cart_order_item_image.dart';
import 'package:xam_shoes_app/ui/views/cart/components/cart_order_item_info.dart';

class CartOrderItem extends StatelessWidget {
  final int index;
  final CartItem cartItem;

  const CartOrderItem({
    required this.index,
    required this.cartItem,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: CartOrderItemImage(
              image: cartItem.shoe.images.first,
            ),
          ),
          Expanded(
            flex: 3,
            child: CartOrderItemInfo(
              index: index,
              model: cartItem.shoe.model,
              retailPrice: cartItem.shoe.retailPrice,
            ),
          ),
          Expanded(
            child: CartOrderItemDeleteButton(index: index),
          ),
        ],
      ),
    );
  }
}
