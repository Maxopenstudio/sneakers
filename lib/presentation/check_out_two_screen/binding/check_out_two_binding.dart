import 'package:get/get.dart';

import '../controller/check_out_two_controller.dart';

class CheckOutTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckOutTwoController());
  }
}
