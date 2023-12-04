import 'package:get/get.dart';

import '../controller/splace_screen_one_controller.dart';

class SplaceScreenOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplaceScreenOneController());
  }
}
