import 'package:get/get.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';

import '../controller/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController(Get.find<ApiClient>()));
  }
}
