import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/check_out_two_screen/models/check_out_two_model.dart';

class CheckOutTwoController extends GetxController {
  Rx<CheckOutTwoModel> checkOutTwoModelObj = CheckOutTwoModel().obs;

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
