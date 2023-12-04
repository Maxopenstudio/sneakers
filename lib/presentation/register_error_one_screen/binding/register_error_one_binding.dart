import 'package:get/get.dart';

import '../controller/register_error_one_controller.dart';

class RegisterErrorOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterErrorOneController());
  }
}
