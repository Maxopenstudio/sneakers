import 'package:get/get.dart';

import '../../../data/apiClient/api_client.dart';
import '../controller/check_out_three_controller.dart';

class CheckOutThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckOutThreeController(Get.find<ApiClient>()));
  }
}
