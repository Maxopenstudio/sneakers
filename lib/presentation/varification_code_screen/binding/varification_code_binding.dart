import 'package:get/get.dart';

import '../controller/varification_code_controller.dart';

class VarificationCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VarificationCodeController());
  }
}
