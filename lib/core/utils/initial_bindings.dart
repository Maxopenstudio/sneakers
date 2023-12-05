import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';
import 'package:shoes_app/presentation/home_screen_page/controller/home_screen_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.lazyPut(() => ApiClient());
    Get.put(HomeScreenController(Get.find<ApiClient>()));
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
