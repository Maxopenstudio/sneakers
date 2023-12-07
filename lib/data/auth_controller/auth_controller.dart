import 'package:get/get.dart';
import 'package:shoes_app/core/utils/pref_utils.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';

import 'models/personal_data_model.dart';

class AuthController extends GetxController {
  AuthController(this.apiClient);

  final ApiClient apiClient;

  Rx<PersonalDataModel?> personalDataModel = (null as PersonalDataModel?).obs;

  @override
  void onInit() {
    //Logout controller
    personalDataModel.listen((personalData) {
      if (personalData != null) {
        print("SET LOGIN");
        PrefUtils.setLogin(true);
      } else {
        print("SET LOGOUT");
        PrefUtils.setLogin(false);
      }
    });
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
