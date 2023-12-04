import 'package:get/get.dart';

import '../controller/register_filled_controller.dart';

class RegisterFilledBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterFilledController());
  }
}
