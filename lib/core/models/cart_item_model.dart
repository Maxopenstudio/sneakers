/*
Author: XamDesign
Date: 24.05.2023
*/

import 'package:get/get.dart';

import 'package:xam_shoes_app/core/models/shoe_model.dart';

class CartItem {
  int? id;
  Shoe shoe;
  RxInt piece;

  CartItem({
    required this.shoe,
    required this.piece,
    this.id,
  });
}
