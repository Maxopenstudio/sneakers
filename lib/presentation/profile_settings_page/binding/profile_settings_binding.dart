import 'package:get/get.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';
import 'package:shoes_app/data/auth_controller/auth_controller.dart';
import 'package:shoes_app/presentation/profile_settings_page/controller/profile_settings_controller.dart';


class ProfileSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileSettingsController(Get.find<ApiClient>(), Get.find<AuthController>()));
  }
}
