import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';
import 'package:shoes_app/data/auth_controller/models/personal_data_model.dart';

class RegisterController extends GetxController {
  RegisterController(this.apiClient);

  ApiClient apiClient;

  TextEditingController registerFirstname = TextEditingController();

  TextEditingController registerLastname = TextEditingController();

  TextEditingController registerEmail = TextEditingController();

  TextEditingController registerPhone = TextEditingController();

  TextEditingController registerPassword = TextEditingController();

  TextEditingController registerPasswordConfirm = TextEditingController();

  Rx<bool> agreeTerms = false.obs;

  Rx<PersonalDataModel?> registerResult = (null as PersonalDataModel?).obs;

  RxMap<String, dynamic> errors = Map<String, dynamic>().obs;

  Future<bool> register() async {
    errors.value = {};
    final result = await apiClient.register(
      firstname: registerFirstname.text,
      lastname: registerLastname.text,
      email: registerEmail.text,
      password: registerPassword.text,
      confirm: registerPasswordConfirm.text,
      telephone: registerPhone.text,
      agree: agreeTerms.value,
    );
    print("RUNTIME: ${result.runtimeType}");
    if (result.runtimeType == PersonalDataModel) {
      registerResult.value = result;
      return true;
    }
    errors.value = (result as Map<String, dynamic>);
    return false;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    registerFirstname.dispose();
    registerLastname.dispose();
    registerEmail.dispose();
    registerPhone.dispose();
    registerPassword.dispose();
    registerPasswordConfirm.dispose();
  }
}
