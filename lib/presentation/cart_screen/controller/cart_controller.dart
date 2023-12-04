import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/cart_screen/models/cart_model.dart';

class CartController extends GetxController {
  CartController(this.cartModelObj);

  TextEditingController group169Controller = TextEditingController();

  Rx<CartModel> cartModelObj = CartModel().obs;

  addQuantity(int index) {
    cartModelObj.value.cartItemList[index].quantity++;
    update();
  }

  removeQuantity(int index) {
    if (cartModelObj.value.cartItemList[index].quantity != 1) {
      cartModelObj.value.cartItemList[index].quantity--;
      update();
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group169Controller.dispose();
  }
}
