/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:get/get.dart';
import 'package:xam_shoes_app/core/models/content/shoe_model.dart';
import 'package:xam_shoes_app/core/providers/api_service/api_service.dart';

class ProductsController extends GetxController {
  List<Shoe> products = [];
  ApiService apiService = Get.find<ApiService>();

  void updateProducts(List<Shoe> products) => this.products = products;

  /*
  void changeCategory(int index) {
    categoryIndex.value = index;
  }

  void reset() {
    categoryIndex.value = 0;
  }
   */

  Future<void> fetchProducts() async {
    products = await apiService.getAllProducts();
  }
}
