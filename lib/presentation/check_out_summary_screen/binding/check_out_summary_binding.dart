import 'package:get/get.dart';
import 'package:shoes_app/presentation/check_out_summary_screen/controller/check_out_summary_controller.dart';

class CheckOutSummaryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckOutSummaryController());
  }
}
