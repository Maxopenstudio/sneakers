import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';

import '../../../data/apiClient/api_client.dart';
import '../models/cart_product_model.dart';

class CartController extends GetxController {
  CartController(this.apiClient);

  final ApiClient apiClient;
  TextEditingController group169Controller = TextEditingController();
  RxList<CartProductModel> cartProducts = List<CartProductModel>.empty().obs;

  bool isProductInCart(int productKey) {
    return cartProducts.any((product) => int.parse(product.key) == productKey);
  }

  CartProductModel getProductByKey(int productKey) => cartProducts.firstWhere((product) => int.parse(product.key) == productKey);

  Future<void> addOrDeleteCartProduct(int productKey) async {
    try {
      await apiClient.removeProductFromCart(productKey);
    } catch (e) {
      print("Problem in ProductsController - $e");
    }
  }
  addQuantity(int index) {
    // cartModelObj.value.cartItemList[index].quantity++;
    update();
  }

  removeQuantity(int index) {
    // if (cartModelObj.value.cartItemList[index].quantity != 1) {
    //   cartModelObj.value.cartItemList[index].quantity--;
    update();
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
