import 'package:get/get.dart';

import '../controller/splace_screen_two_controller.dart';

class SplaceScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplaceScreenTwoController());
  }
}
