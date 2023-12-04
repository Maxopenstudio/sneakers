import 'package:get/get.dart';

import '../controller/home_screen_container_controller.dart';

class HomeScreenContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenContainerController());
  }
}
