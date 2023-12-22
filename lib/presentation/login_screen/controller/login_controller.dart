import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';
import 'package:shoes_app/data/auth_controller/models/personal_data_model.dart';
import 'package:shoes_app/presentation/login_screen/models/login_model.dart';

class LoginController extends GetxController {
  LoginController(this.apiClient);

  ApiClient apiClient;

  TextEditingController loginEmail = TextEditingController();

  TextEditingController loginPassword = TextEditingController();

  Rx<PersonalDataModel?> loginResult = (null as PersonalDataModel?).obs;

  Rx<String?> errors = (null as String?).obs;
  Rx<bool> passwordVisibility = true.obs;

  Future<bool> login() async {
    print("login: ${loginEmail.text}");
    print("password: ${loginPassword.text}");

    errors.value = null;
    final result = await apiClient.login(
      email: loginEmail.text,
      password: loginPassword.text,
    );
    if (result.runtimeType == PersonalDataModel) {
      loginResult.value = result;
      return true;
    }
    print("result: $result");
    errors.value = (result as List<dynamic>).first;
    return false;
  }

  Future<void> switchVisibility() async {
    passwordVisibility.value = !passwordVisibility.value;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    loginEmail.dispose();
    loginPassword.dispose();
  }
}
