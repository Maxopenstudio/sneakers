import 'package:get/get.dart';

import '../controller/order_details_two_controller.dart';

class OrderDetailsTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderDetailsTwoController());
  }
}
