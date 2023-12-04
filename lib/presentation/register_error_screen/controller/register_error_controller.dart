import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/register_error_screen/models/register_error_model.dart';

class RegisterErrorController extends GetxController {
  TextEditingController groupFourteenController = TextEditingController();

  TextEditingController groupFifteenController = TextEditingController();

  TextEditingController groupSixteenController = TextEditingController();

  TextEditingController groupSeventeenController = TextEditingController();

  TextEditingController groupEighteenController = TextEditingController();

  Rx<RegisterErrorModel> registerErrorModelObj = RegisterErrorModel().obs;

  Rx<bool> isShowPassword = false.obs;

  Rx<bool> isShowPassword1 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFourteenController.dispose();
    groupFifteenController.dispose();
    groupSixteenController.dispose();
    groupSeventeenController.dispose();
    groupEighteenController.dispose();
  }
}
