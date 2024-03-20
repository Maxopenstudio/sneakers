import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';
import 'package:shoes_app/presentation/check_out_payment_method_screen/models/payment_method.dart';

class CheckOutPaymentMethodController extends GetxController {
  CheckOutPaymentMethodController(this.apiClient);

  final ApiClient apiClient;

  /*
  TextEditingController group146Controller = TextEditingController();

  TextEditingController group147Controller = TextEditingController();

  TextEditingController group148Controller = TextEditingController();

  TextEditingController group149Controller = TextEditingController();
   */

  RxList<PaymentMethod> paymentMethods = RxList.empty();

  RxString paymentMethodCode = "".obs;

  RxBool expand = true.obs;

  String? get selectedPaymentMethodString {
    PaymentMethod? selectedPaymentMethod = paymentMethods.firstWhere((paymentMethod) => paymentMethod.code == paymentMethodCode.value);
    return selectedPaymentMethod.title;
  }

  changeExpand() {
    expand.value = expand.value ? false : true;
    update();
  }

  changeRadioGroup(String value) {
    paymentMethodCode.value = value;
    setPaymentMethod(value);
    update();
  }

  Future<void> updatePaymentMethods() async {
    try {
      print("START FETCH PAYMENT");
      paymentMethods.value = (await apiClient.fetchPaymentMethods());
      update();
      print("UPDATE FETCH PAYMENT: ${paymentMethods}");

    } catch (e) {
      print("Problem in updatePaymentMethods - $e");
    }
  }

  Future<void> setPaymentMethod(String code) async {
    try {
      await apiClient.setPaymentMethod(code);
      update();
    } catch (e) {
      print("Problem in setPaymentMethod - $e");
    }
  }

  RxString radioGroup1 = "".obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    /*
    group146Controller.dispose();
    group147Controller.dispose();
    group148Controller.dispose();
    group149Controller.dispose();
     */
  }
}
