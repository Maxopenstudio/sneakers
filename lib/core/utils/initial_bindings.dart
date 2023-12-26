import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/core/storage/repositories/hive_repository.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';
import 'package:shoes_app/data/auth_controller/auth_controller.dart';
import 'package:shoes_app/data/products_controller/products_controller.dart';
import 'package:shoes_app/presentation/categories_screen/controller/categories_controller.dart';
import 'package:shoes_app/presentation/home_screen_page/controller/home_screen_controller.dart';
import 'package:shoes_app/presentation/terms_condition_screen/controller/terms_condition_controller.dart';
import 'package:shoes_app/presentation/search_screen/controller/search_controller.dart';

import '../../presentation/best_selling_product_screen/controller/best_selling_product_controller.dart';
import '../../presentation/cart_screen/controller/cart_controller.dart';
import '../../presentation/category_products_screen/controller/category_products_controller.dart';
import '../../presentation/check_out_three_screen/controller/check_out_three_controller.dart';
import '../../presentation/order_details_two_screen/controller/order_details_two_controller.dart';
import '../../presentation/privacy_policy_screen/controller/privacy_policy_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() async {
    Get.put(PrefUtils());
    Get.lazyPut(() => ApiClient());
    Get.put(ProductsController(Get.find<ApiClient>()));
    Get.put(CartController(Get.find<ApiClient>()));
    Get.put(CheckOutThreeController(Get.find<ApiClient>()));
    Get.put(OrderDetailsTwoController(Get.find<ApiClient>()));
    Get.put(HomeScreenController(Get.find<ApiClient>()));
    Get.put(BestSellingProductController(Get.find<ApiClient>()));
    Get.put(AuthController(Get.find<ApiClient>()));
    Get.put(CategoriesController());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
    Get.put(PrivacyPolicyController());
    Get.put(TermsConditionController());
    Get.put(SearchProductController(
        Get.find<ApiClient>(), Get.find<HiveRepository>()));
  }
}
