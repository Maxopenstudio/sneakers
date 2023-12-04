import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/register_screen/models/register_model.dart';

class RegisterController extends GetxController {
  TextEditingController groupSixtySixController = TextEditingController();

  TextEditingController groupSixtySevenController = TextEditingController();

  TextEditingController groupSixtyEightController = TextEditingController();

  TextEditingController groupSixtyNineController = TextEditingController();

  TextEditingController groupSeventyController = TextEditingController();

  Rx<RegisterModel> registerModelObj = RegisterModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupSixtySixController.dispose();
    groupSixtySevenController.dispose();
    groupSixtyEightController.dispose();
    groupSixtyNineController.dispose();
    groupSeventyController.dispose();
  }
}
