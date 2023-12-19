import 'package:get/get.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';
import 'package:shoes_app/data/auth_controller/auth_controller.dart';
import 'package:shoes_app/presentation/language_settings_page/controller/language_settings_controller.dart';

class LanguageSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LanguageSettingsController(Get.find<ApiClient>(), Get.find<AuthController>()));
  }
}
