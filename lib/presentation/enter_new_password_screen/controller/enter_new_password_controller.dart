import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/enter_new_password_screen/models/enter_new_password_model.dart';

class EnterNewPasswordController extends GetxController {
  TextEditingController groupThirtyTwoController = TextEditingController();

  TextEditingController groupThirtyThreeController = TextEditingController();

  Rx<EnterNewPasswordModel> enterNewPasswordModelObj = EnterNewPasswordModel().obs;

  Rx<bool> isShowPassword = false.obs;

  Rx<bool> isShowPassword1 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupThirtyTwoController.dispose();
    groupThirtyThreeController.dispose();
  }
}
