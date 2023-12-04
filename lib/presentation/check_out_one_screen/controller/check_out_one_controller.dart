import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/check_out_one_screen/models/check_out_one_model.dart';

class CheckOutOneController extends GetxController {
  TextEditingController group146Controller = TextEditingController();

  TextEditingController group147Controller = TextEditingController();

  TextEditingController group148Controller = TextEditingController();

  TextEditingController group149Controller = TextEditingController();

  Rx<CheckOutOneModel> checkOutOneModelObj = CheckOutOneModel().obs;

  RxString radioGroup = "".obs;

  RxBool expand = true.obs;

  changeExpand() {
    expand.value = expand.value ? false : true;
    update();
  }

  changeRadioGroup(String value) {
    radioGroup.value = value;
    update();
  }

  RxString radioGroup1 = "".obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group146Controller.dispose();
    group147Controller.dispose();
    group148Controller.dispose();
    group149Controller.dispose();
  }
}
