import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';
import 'package:shoes_app/data/products_controller/products_controller.dart';
import 'package:shoes_app/presentation/categories_screen/controller/categories_controller.dart';
import 'package:shoes_app/presentation/home_screen_page/controller/home_screen_controller.dart';

import '../../presentation/best_selling_product_screen/controller/best_selling_product_controller.dart';
import '../../presentation/category_products_screen/controller/category_products_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.lazyPut(() => ApiClient());
    Get.put(ProductsController(Get.find<ApiClient>()));
    Get.put(HomeScreenController(Get.find<ApiClient>()));
    Get.put(BestSellingProductController(Get.find<ApiClient>()));
    Get.put(CategoriesController());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
