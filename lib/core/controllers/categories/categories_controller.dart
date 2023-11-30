/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:get/get.dart';
import 'package:xam_shoes_app/core/models/content/category_model.dart';
import 'package:xam_shoes_app/core/providers/api_service/api_service.dart';

class CategoriesController extends GetxController {
  RxInt categoryIndex = 0.obs;
  List<Category> categories = [];
  ApiService apiService = Get.find<ApiService>();

  void updateCategories(List<Category> categories) => this.categories = categories;

  void changeCategory(int index) {
    categoryIndex.value = index;
  }

  void reset() {
    categoryIndex.value = 0;
  }

  Future<void> fetchCategories() async {
    categories = await apiService.getCategories();
  }
}
