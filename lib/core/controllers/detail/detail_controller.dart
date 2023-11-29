/*
Author: XamDesign
Date: 25.05.2023
*/

import 'dart:ui';

import 'package:get/get.dart';
import 'package:xam_shoes_app/core/data/shoe_list.dart';

class DetailController extends GetxController {
  Rx<Color> selectedColor = shoeList.first.colors.first.obs;
  RxBool showDetails = false.obs;

  void changeColor(Color color) {
    selectedColor.value = color;
  }

  void reset() {
    selectedColor.value = shoeList.first.colors.first;
  }
}
