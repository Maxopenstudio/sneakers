import 'package:get/get.dart';

import '../../../data/apiClient/api_client.dart';
import '../controller/cart_controller.dart';

class CartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartController(Get.find<ApiClient>()));
  }
}
