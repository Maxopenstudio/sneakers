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
  Rx<String> discount = "".obs;
  Rx<String> couponDescription = "".obs;
  Rx<Cart> cart = Cart(
    weight: '',
    products: [],
    vouchers: [],
    couponStatus: null,
    coupon: '',
    voucherStatus: null,
    voucher: '',
    rewardStatus: false,
    reward: '',
    totals: [],
    total: '',
    totalRaw: 0,
    totalProductCount: 0,
    hasShipping: 0,
    hasDownload: 0,
    hasRecurringProducts: 0,
    currency: Currency(
        currencyId: '',
        symbolLeft: '',
        symbolRight: '',
        decimalPlace: '',
        value: ''),
  ).obs;

  bool isProductInCart(int productKey) {
    return cartProducts.any((product) => int.parse(product.key) == productKey);
  }

  CartProductModel getProductByKey(int productKey) =>
      cartProducts
          .firstWhere((product) => int.parse(product.key) == productKey);

  Future<void> addCoupon() async {
    try {
      await apiClient.addCoupon(coupon: group169Controller.text);
      await updateCartDetails();
    } catch (e) {
      print("Problem in CartController - $e | ${group169Controller.text}");
      var val = e.toString();
      errors.value = val;
    }
  }

  Future<void> updateCartDetails() async {
    try {
      cart.value = (await apiClient.fetchCart());
      cartProducts.value = cart.value.products;
      if (group169Controller.text.isEmpty) {
        discount.value = "";
        couponDescription.value = "";
      } else {
        discount.value = cart.value.totals[1].text;
        couponDescription.value = cart.value.totals[1].title;
      }
    } catch (e) {
      print("Problem in updateCartDetails - $e");
    }
  }

      Future<void> deleteCartProduct(int productKey) async {
        try {
          await apiClient.removeProductFromCart(productKey);
          print('delete product from cart  with product key $productKey');
          await updateCartDetails();
          print('fetch new product');
        } catch (e) {
          print("Problem in CartController - $e");
        }
      }

      Future<void> addQuantity(int productKey, int quantity,
          //TODO - maxQuantity
              {int maxQuantity = 100}) async {
        if (quantity < maxQuantity) {
          try {
            await quantity++;
            await apiClient.changeCartProductQuantity(productKey, quantity);
            await updateCartDetails();
          } catch (e) {}
        } else {
          print("maxQuantity = 100");
        }
      }

      Future<void> removeQuantity(int productKey,
          int quantity,) async {
        try {
          await quantity--;
          await apiClient.changeCartProductQuantity(productKey, quantity);
          await updateCartDetails();
        } catch (e) {}
      }

      Future<void> addProductInCart(int productId, int quantity,
          int productOptionId, int productOptionValueId) async {
        try {
          await apiClient.addProductCart(
              productId, quantity, productOptionId, productOptionValueId);
          await updateCartDetails();
          print(
              "product with productId:$productId, quantity: $quantity, productOptionId: $productOptionId, productOptionValueId - $productOptionValueId added");
        } catch (e) {
          print("Problem in CartController - $e");
          print("Problem in addProductInCart - $e");
        }
      }


      @override
      void onReady() {
        super.onReady();
      }

      @override
      void onClose() {
        group169Controller.dispose();
        super.onClose();
      }
    }