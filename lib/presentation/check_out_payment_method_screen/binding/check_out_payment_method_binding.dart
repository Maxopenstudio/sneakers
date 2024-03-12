import 'package:get/get.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';
import 'package:shoes_app/presentation/check_out_payment_method_screen/controller/check_out_payment_method_controller.dart';

class CheckOutPaymentMethodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckOutPaymentMethodController(Get.find<ApiClient>()));
  }
}
