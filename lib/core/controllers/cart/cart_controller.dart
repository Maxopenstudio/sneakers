/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/data/shoe_list.dart';
import 'package:xam_shoes_app/core/models/cart_item_model.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/widgets/custom_loading_button.dart';
import 'package:xam_shoes_app/core/widgets/custom_warning_alert/custom_warning_alert.dart';

class CartController extends GetxController {
  RxList<CartItem> cartItemList = <CartItem>[].obs;
  RxDouble cartTotal = 0.0.obs;
  RxDouble shippingCost = 80.0.obs;
  RxDouble cartTotalWithShippingCost = 0.0.obs;
  final RoundedLoadingButtonController addToCartButtonController =
  RoundedLoadingButtonController();

  bool addItemToCart(int shoeId) {
    final shoeItem =
    cartItemList.firstWhereOrNull((item) => item.shoe.id == shoeId);
    if (shoeItem == null) {
      cartItemList.add(
        CartItem(
          shoe: shoeList.firstWhere((shoe) => shoe.id == shoeId),
          piece: 1.obs,
        ),
      );
      calculateTotal();
      return true;
    } else {
      if (shoeList
          .firstWhere((shoe) => shoe.id == shoeId)
          .stock ==
          shoeItem.piece.value) {
        calculateTotal();
        return false;
      }
      cartItemList
          .firstWhere((item) => item.shoe.id == shoeId)
          .piece++;
      calculateTotal();
      return true;
    }
  }

  void increaseCartItemPiece(int index) {
    if (cartItemList[index].piece.value == cartItemList[index].shoe.stock) {
      return;
    }
    cartItemList[index].piece++;
    calculateTotal();
  }

  void decreaseCartItemPiece(int index, BuildContext context) {
    if (cartItemList[index].piece > 1) {
      cartItemList[index].piece--;
    }
    else {
      showDialog(
        context: context,
        builder: (BuildContext context) =>
            CustomWarningAlert(
              title: TranslationKeys.removeItemWarning.tr,
              onYesPressed: () {
                BaseController.cartController.deleteItemFromCart(index);
                Get.back();
              },
            ),
      );
    }

    calculateTotal();
  }

  void deleteItemFromCart(int index) {
    cartItemList.removeAt(index);
    calculateTotal();
  }

  double calculateDiscount(double retailPrice, int discountRate) {
    return retailPrice - (retailPrice * (discountRate / 100));
  }

  void calculateTotal() {
    cartTotal.value = 0.0;
    for (final cartItem in cartItemList) {
      cartTotal.value += (cartItem.shoe.discountRate != null
          ? calculateDiscount(
          cartItem.shoe.retailPrice, cartItem.shoe.discountRate!)
          : cartItem.shoe.retailPrice) *
          cartItem.piece.value;
    }
    cartTotalWithShippingCost.value = cartTotal.value + shippingCost.value;
  }

  void reset() {
    cartItemList.clear();
    cartTotal.value = 0.0;
    cartTotalWithShippingCost.value = 0.0;
  }
}
