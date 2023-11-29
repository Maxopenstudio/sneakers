/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt categoryIndex = 0.obs;
  RxInt filterTypeIndex = 0.obs;
  RxInt filterCategoryIndex = 0.obs;
  Rx<RangeValues> currentRangeValues = const RangeValues(0, 500).obs;
  RxBool isShowCategoryList = true.obs;

  ScrollController shoeListController = ScrollController();

  void scrollListenerShoesList() async {
    if (shoeListController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      isShowCategoryList.value = false;
    }
    if (shoeListController.position.userScrollDirection ==
        ScrollDirection.forward) {
      isShowCategoryList.value = true;
    }
  }

  double calculateDiscount(double retailPrice, int discountRate) {
    return retailPrice - (retailPrice * (discountRate / 100));
  }

  void changeCategory(int index) {
    categoryIndex.value = index;
  }

  void changeFilterType(int index) {
    filterTypeIndex.value = index;
  }

  void changeFilterCategory(int index) {
    filterCategoryIndex.value = index;
  }

  void reset() {
    categoryIndex.value = 0;
    filterTypeIndex.value = 0;
    filterCategoryIndex.value = 0;
  }
}
