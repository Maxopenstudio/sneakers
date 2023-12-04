import 'package:get/get.dart';

import 'cart_item_model.dart';

class CartModel {
  RxList<CartItemModel> cartItemList = [CartItemModel("cart1.png", "Sparx", "\$12.00", "Pink", 01), CartItemModel("cart2.png", "Centrino", "\$32.00", "Black", 01), CartItemModel("cart3.png", "Campus", "\$10.00", "Brown", 01)].obs;
}
