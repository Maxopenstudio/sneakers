import 'package:get/get.dart';
import 'package:shoes_app/presentation/category_products_screen/controller/category_products_controller.dart';

import '../../home_screen_page/models/home_screen_model.dart';

class CategoryProductsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryProductsController());
  }
}
