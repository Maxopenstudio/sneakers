/*
Author: XamDesign
Date: 1.06.2023
*/

import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/data/shoe_list.dart';
import 'package:xam_shoes_app/ui/views/cart/components/cart_order_item_piece.dart';
import 'package:xam_shoes_app/ui/views/shoe/shoe_price.dart';

class CartOrderItemInfo extends StatelessWidget {
  final int index;
  final String model;
  final double retailPrice;

  const CartOrderItemInfo({
    required this.index,
    required this.model,
    required this.retailPrice,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShoePrice(shoeIndex: shoeList.indexWhere((e) => e.model == model)),
          const SizedBox(height: 16.0),
          CartOrderItemPiece(index: index),
        ],
      ),
    );
  }
}
