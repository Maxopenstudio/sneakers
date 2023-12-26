import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/categories_screen/controller/categories_controller.dart';
import 'package:shoes_app/presentation/home_screen_page/models/home_screen_model.dart';

import '../../../data/apiClient/api_client.dart';
import '../../categories_screen/models/categories_item_model.dart';
import '../models/slideshow_model.dart';

class HomeScreenController extends GetxController {
  HomeScreenController(this.apiClient);

  final ApiClient apiClient;

  TextEditingController groupThreeController = TextEditingController();

  late Rx<HomeScreenModel> homeScreenModelObj;
  Rx<SlideShow> slideShow = SlideShow(
      moduleId: 0,
      name: '',
      bannerId: 0,
      width: '',
      height: '',
      status: '',
      banners: []).obs;
  Rx<int> silderIndex = 0.obs;

  Rx<int> categoryIndex = 0.obs;

  @override
  void onInit() async {
    // TODO: implement onInit
    homeScreenModelObj = HomeScreenModel().obs;
    List<CategoriesItemModel>? categories =
        await apiClient.getAllCategories() ?? [];
    Get.find<CategoriesController>().categoriesModelObj =
        categories.map((category) => category.categories).toList().obs;
    final listSlider = (await apiClient.fetchSlideshow()).where((element) => element.name == "Home Page").toList();
    slideShow.value = listSlider.first;
    homeScreenModelObj =
        homeScreenModelObj.value.copyWith(categoryList: categories.obs).obs;
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
