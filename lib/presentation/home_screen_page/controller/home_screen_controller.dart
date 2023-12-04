import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/home_screen_page/models/home_screen_model.dart';

class HomeScreenController extends GetxController {
  HomeScreenController(this.homeScreenModelObj);

  TextEditingController groupThreeController = TextEditingController();

  Rx<HomeScreenModel> homeScreenModelObj;

  Rx<int> silderIndex = 0.obs;

  Rx<int> categoryIndex = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupThreeController.dispose();
  }

  onChangeIndex(int value) {
    silderIndex.value = value;
    update();
  }

  setCategory(int value) {
    categoryIndex.value = value;
    update();
  }
}
