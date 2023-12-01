/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:get/get.dart';
import 'package:xam_shoes_app/core/models/content/manufacturer_model.dart';
import 'package:xam_shoes_app/core/providers/api_service/api_service.dart';

class ManufacturersController extends GetxController {
  RxInt manufacturerIndex = 0.obs;
  List<Manufacturer> manufacturers = [];
  ApiService apiService = Get.find<ApiService>();

  void updateManufacturers(List<Manufacturer> manufacturers) => this.manufacturers = manufacturers;

  void changeManufacturer(int index) {
    manufacturerIndex.value = index;
  }

  void reset() {
    manufacturerIndex.value = 0;
  }

  Future<void> fetchManufacturers() async {
    manufacturers = await apiService.getManufacturers();
  }
}
