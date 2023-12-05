import 'package:get/get.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';

import '../controller/best_selling_product_controller.dart';

class BestSellingProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BestSellingProductController(Get.find<ApiClient>()));
  }
}
