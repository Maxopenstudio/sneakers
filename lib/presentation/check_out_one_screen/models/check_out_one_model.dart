import 'package:get/get.dart';

import 'checkoutone_item_model.dart';

class CheckOutOneModel {
  RxList<CheckoutoneItemModel> checkoutoneItemList = [
    CheckoutoneItemModel("Paypal", "paypal.svg"),
    CheckoutoneItemModel("Cash On Delivery", "cash.svg"),
  ].obs;

  RxList<CheckoutoneItemModel> cardLists = [
    CheckoutoneItemModel("6895 7852 5898 4200", "masterCard.svg"),
    CheckoutoneItemModel("7892 5487 8600 3525", "visa.svg"),
  ].obs;
}
