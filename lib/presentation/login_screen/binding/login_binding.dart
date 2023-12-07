import 'package:get/get.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';

import '../controller/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(Get.find<ApiClient>()));
  }
}
