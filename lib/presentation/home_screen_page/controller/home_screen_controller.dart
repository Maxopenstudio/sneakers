import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/home_screen_page/models/home_screen_model.dart';

import '../../../data/apiClient/api_client.dart';

class HomeScreenController extends GetxController {
  HomeScreenController(this.apiClient);

  final ApiClient apiClient;

  TextEditingController groupThreeController = TextEditingController();

  late Rx<HomeScreenModel> homeScreenModelObj;

  Rx<int> silderIndex = 0.obs;

  Rx<int> categoryIndex = 0.obs;

  @override
  void onInit() async {
    // TODO: implement onInit
    homeScreenModelObj = HomeScreenModel().obs;
    List<String> categories = await apiClient.getAllCategories() ?? [];
    homeScreenModelObj = homeScreenModelObj.value.copyWith(categoryList: categories.obs).obs;
    super.onInit();
  }

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
