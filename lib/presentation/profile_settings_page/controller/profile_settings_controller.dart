import 'package:flutter/cupertino.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';
import 'package:shoes_app/data/auth_controller/auth_controller.dart';

class ProfileSettingsController extends GetxController {
  ProfileSettingsController(this.apiClient, this.authController);

  ApiClient apiClient;
  AuthController authController;

  late TextEditingController profileFirstname;

  late TextEditingController profileLastname;

  late TextEditingController profileEmail;

  late TextEditingController profilePhone;

  @override
  void onInit() {
    profileFirstname = TextEditingController(text: authController.personalDataModel.value?.firstname);
    profileLastname = TextEditingController(text: authController.personalDataModel.value?.lastname);
    profileEmail = TextEditingController(text: authController.personalDataModel.value?.email);
    profilePhone = TextEditingController(text: authController.personalDataModel.value?.telephone);

    super.onInit();
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
