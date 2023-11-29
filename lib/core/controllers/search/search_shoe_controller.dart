/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SearchShoeController extends GetxController {
  Rx<TextEditingController> searchFieldController = TextEditingController().obs;
  RxInt filterSizeIndex = 0.obs;
  Rx<Color> filterColor = const Color(0xFFFF0000).obs;

  void changeFilterSize(int index) {
    filterSizeIndex.value = index;
  }

  void changeFilterColor(Color color) {
    filterColor.value = color;
  }

  void changeSearchText(String text) {
    searchFieldController.value.text = text;
  }

  void reset() {
    filterSizeIndex.value = 0;
  }
}
