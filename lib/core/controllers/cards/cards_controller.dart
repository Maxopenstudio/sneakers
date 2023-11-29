/*
Author: XamDesign
Date: 8.06.2023
*/

import 'package:get/get.dart';
import 'package:xam_shoes_app/core/utils/card_number_formatter.dart';

class CardsController extends GetxController {
  RxString cardNumber = "1234 5678 9012 3456".obs;
  RxString cardHolder = "Alexander Alexander".obs;
  RxString cardCVV = "111".obs;
  RxString cardExpiryDate = "01/30".obs;
  RxString cardType = "Visa".obs;
  RxInt cardBrandIndex = 0.obs;
  final CardNumberFormatter cardNumberFormatter = CardNumberFormatter();

  void changeCardNumber(String number) {
    cardNumber.value = number;
  }

  void changeCardHolder(String name) {
    cardHolder.value = name;
  }

  void changeCardBrand(int index) {
    cardBrandIndex.value = index;
  }

  void changeCardCVV(String cvv) {
    cardCVV.value = cvv;
  }

  void changeCardExpiryDate(String date) {
    cardExpiryDate.value = date;
  }

  void changeCardType(String type) {
    cardType.value = type;
  }

  void reset() {
    cardNumber.value = "";
    cardHolder.value = "";
    cardBrandIndex.value = 0;
  }
}
