import 'package:get/get.dart';

import '../controller/select_address_controller.dart';

class SelectAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectAddressController());
  }
}
