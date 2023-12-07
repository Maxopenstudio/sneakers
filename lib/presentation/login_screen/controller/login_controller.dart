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

  RxList<String> errors = List<String>.empty().obs;

  Future<bool> login() async {
    print("login: ${loginEmail.text}");
    print("password: ${loginPassword.text}");

    final result = await apiClient.login(
      email: loginEmail.text,
      password: loginPassword.text,
    );
    if (result.runtimeType == PersonalDataModel) {
      loginResult.value = result;
      return true;
    }
    errors = (result as List<String>).obs;
    return false;
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
