import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/order_details_one_screen/models/order_details_one_model.dart';

class OrderDetailsOneController extends GetxController {
  Rx<OrderDetailsOneModel> orderDetailsOneModelObj = OrderDetailsOneModel().obs;

  RxBool checkbox = false.obs;

  RxBool checkbox1 = false.obs;

  RxBool checkbox2 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
