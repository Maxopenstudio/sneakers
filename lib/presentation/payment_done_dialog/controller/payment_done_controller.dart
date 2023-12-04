import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/payment_done_dialog/models/payment_done_model.dart';

class PaymentDoneController extends GetxController {
  Rx<PaymentDoneModel> paymentDoneModelObj = PaymentDoneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
