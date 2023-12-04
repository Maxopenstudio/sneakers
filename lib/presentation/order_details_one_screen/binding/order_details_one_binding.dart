import 'package:get/get.dart';

import '../controller/order_details_one_controller.dart';

class OrderDetailsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderDetailsOneController());
  }
}
