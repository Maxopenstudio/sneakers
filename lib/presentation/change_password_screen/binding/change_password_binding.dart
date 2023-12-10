import 'package:get/get.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';
import 'package:shoes_app/data/auth_controller/auth_controller.dart';
import 'package:shoes_app/presentation/change_password_screen/controller/change_password_controller.dart';


class ChangePasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangePasswordController(Get.find<ApiClient>(), Get.find<AuthController>()));
  }
}
