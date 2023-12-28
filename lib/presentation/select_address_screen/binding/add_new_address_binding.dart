import 'package:get/get.dart';

import '../../../data/apiClient/api_client.dart';
import '../controller/add_new_address_controller.dart';

class AddNewAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewAddressController(Get.find<ApiClient>()));
  }
}
