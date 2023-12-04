import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/login_screen/models/login_model.dart';

class LoginController extends GetxController {
  TextEditingController group110Controller = TextEditingController();

  TextEditingController group111Controller = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group110Controller.dispose();
    group111Controller.dispose();
  }
}
