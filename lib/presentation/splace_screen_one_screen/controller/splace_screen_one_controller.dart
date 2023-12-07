import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';
import 'package:shoes_app/data/auth_controller/auth_controller.dart';
import 'package:shoes_app/data/auth_controller/models/personal_data_model.dart';
import 'package:shoes_app/presentation/splace_screen_one_screen/models/splace_screen_one_model.dart';

class SplaceScreenOneController extends GetxController {
  Rx<SplaceScreenOneModel> splaceScreenOneModelObj = SplaceScreenOneModel().obs;

  @override
  Future<void> onReady() async {
    super.onReady();
    bool isFirst = await PrefUtils.getIsIntro();

    ApiClient apiClient = Get.find<ApiClient>();

    //print("LAST: ${apiClient.sessionIDStream.value}");

    PersonalDataModel? personalData = await apiClient.getAccount();

    print(personalData);

    Get.find<AuthController>().personalDataModel.value = personalData;

    Future.delayed(const Duration(milliseconds: 3000), () {
      if (isFirst) {
        Get.toNamed(AppRoutes.onboardingOneScreen);
      } else if (personalData != null) {
        Get.toNamed(AppRoutes.homeScreenContainerScreen);
      } else {
        apiClient.regenerateSessionId();
        Get.toNamed(AppRoutes.loginScreen);
      }
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
