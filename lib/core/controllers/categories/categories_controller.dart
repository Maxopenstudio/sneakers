/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:get/get.dart';

class CategoriesController extends GetxController {
  RxInt categoryIndex = 0.obs;

  void changeCategory(int index) {
    categoryIndex.value = index;
  }

  void reset() {
    categoryIndex.value = 0;
  }
}
