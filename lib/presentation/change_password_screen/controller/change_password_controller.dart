import 'package:flutter/cupertino.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';
import 'package:shoes_app/data/auth_controller/auth_controller.dart';
import 'package:shoes_app/presentation/my_profile_page/models/my_profile_model.dart';

class ChangePasswordController extends GetxController {
  ChangePasswordController(this.apiClient, this.authController);

  ApiClient apiClient;
  AuthController authController;

  TextEditingController profilePassword = TextEditingController();

  TextEditingController profilePasswordConfirm = TextEditingController();

  Rx<String> errors = "".obs;

  Future<bool> updatePassword() async {
    errors.value = "";
    final result = await apiClient.updatePassword(profilePassword.text, profilePasswordConfirm.text);
    print("RUNTIME: ${result} | ${result.runtimeType}");
    if (result.runtimeType == bool && result == true) {
      return true;
    }
    errors.value = (result as List).first;
    return false;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
