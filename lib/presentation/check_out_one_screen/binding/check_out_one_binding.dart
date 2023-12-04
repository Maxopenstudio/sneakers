import 'package:get/get.dart';

import '../controller/check_out_one_controller.dart';

class CheckOutOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckOutOneController());
  }
}
