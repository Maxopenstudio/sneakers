/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  Rx<Color> selectedColor = Colors.red.obs; //shoeList.first.colors.first.obs;
  RxBool showDetails = false.obs;

  void changeColor(Color color) {
    selectedColor.value = color;
  }

  void reset() {
    selectedColor.value = Colors.red;
  }
}
