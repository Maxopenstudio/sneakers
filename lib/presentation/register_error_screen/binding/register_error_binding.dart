import 'package:get/get.dart';

import '../controller/register_error_controller.dart';

class RegisterErrorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterErrorController());
  }
}
