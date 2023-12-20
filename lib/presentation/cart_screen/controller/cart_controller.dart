import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';

import '../../../data/apiClient/api_client.dart';
import '../models/cart_product_model.dart';

class CartController extends GetxController {
  CartController(this.apiClient);

  final ApiClient apiClient;
  TextEditingController group169Controller = TextEditingController();
  RxList<CartProductModel> cartProducts = List<CartProductModel>.empty().obs;
  Rx<String?> errors = "".obs;

  bool isProductInCart(int productKey) {
    return cartProducts.any((product) => int.parse(product.key) == productKey);
  }

  CartProductModel getProductByKey(int productKey) => cartProducts
      .firstWhere((product) => int.parse(product.key) == productKey);

  Future<void> addCoupon() async {
    try {
      await apiClient.addCoupon(coupon: group169Controller.text);
    } catch (e) {
      print("Problem in CartController - $e");
      var val = e.toString();
      errors.value = val;

    }
  }

  Future<void> deleteCartProduct(int productKey) async {
    try {
      await apiClient.removeProductFromCart(productKey);
      print('delete product from cart  with product key $productKey');
      cartProducts.value = (await apiClient.fetchCart());
      print('fetch new product');
    } catch (e) {
      print("Problem in CartController - $e");
    }
  }
  Future<void> addQuantity(int productKey, int quantity,
      //TODO - maxQuantity
      {int maxQuantity = 100}) async {
    if(quantity < maxQuantity){
      try {
        await quantity++;
        await apiClient.changeCartProductQuantity(productKey, quantity);
        final fetchedCartProducts = (await apiClient.fetchCart());
        cartProducts.value = fetchedCartProducts;
      } catch (e) {}
    }
    else{
      print("maxQuantity = 100");
    }
  }

  Future<void> removeQuantity(
    int productKey,
    int quantity,
  ) async {
      try {
        await quantity--;
        await apiClient.changeCartProductQuantity(productKey, quantity);
        final fetchedCartProducts = (await apiClient.fetchCart());
        cartProducts.value = fetchedCartProducts;
      } catch (e) {}
  }
  Future<void> addProductInCart(int productId, int quantity, int productOptionId, int productOptionValueId) async {
    try {
      await apiClient.addProductCart(productId, quantity, productOptionId, productOptionValueId);
      cartProducts.value = (await apiClient.fetchCart());
      print("product with productId:$productId, quantity: $quantity, productOptionId: $productOptionId, productOptionValueId - $productOptionValueId added");
    } catch (e) {
      print("Problem in CartController - $e");
      print("Problem in addProductInCart - $e");
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
