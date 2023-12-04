import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/register_filled_screen/models/register_filled_model.dart';

class RegisterFilledController extends GetxController {
  TextEditingController groupTwentySevenController = TextEditingController();

  TextEditingController groupTwentyEightController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordOneController = TextEditingController();

  Rx<RegisterFilledModel> registerFilledModelObj = RegisterFilledModel().obs;

  Rx<bool> isShowPassword = false.obs;

  Rx<bool> isShowPassword1 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupTwentySevenController.dispose();
    groupTwentyEightController.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordOneController.dispose();
  }
}
