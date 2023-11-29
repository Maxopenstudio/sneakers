/*
Author: XamDesign
Date: 8.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  RxString resetPassword = "".obs;
  RxString confirmResetPassword = "".obs;
  RxBool loginRememberMe = false.obs;

  final formKey = GlobalKey<FormState>();

  void changePassword(String password) {
    resetPassword.value = password;
  }

  void changeConfirmPassword(String password) {
    confirmResetPassword.value = password;
  }

  bool validateResetPassword() {
    return resetPassword.value == confirmResetPassword.value;
  }

  void setLoginRememberMe(bool val) {
    loginRememberMe.value = val;
  }

  void reset() {
    resetPassword.value = "";
    confirmResetPassword.value = "";
  }
}
