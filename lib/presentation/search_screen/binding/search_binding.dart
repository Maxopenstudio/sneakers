import 'package:get/get.dart';
import 'package:shoes_app/core/storage/repositories/hive_repository.dart';

import '../../../data/apiClient/api_client.dart';
import '../controller/search_controller.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchProductController(
        Get.find<ApiClient>(), Get.find<HiveRepository>()));
  }
}
