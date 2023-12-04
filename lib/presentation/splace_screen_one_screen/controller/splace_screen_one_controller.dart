import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/splace_screen_one_screen/models/splace_screen_one_model.dart';

class SplaceScreenOneController extends GetxController {
  Rx<SplaceScreenOneModel> splaceScreenOneModelObj = SplaceScreenOneModel().obs;

  @override
  Future<void> onReady() async {
    super.onReady();
    bool isFirst = await PrefUtils.getIsIntro();
    bool isLogin = await PrefUtils.getIsLogin();
    Future.delayed(const Duration(milliseconds: 3000), () {
      if (isFirst) {
        Get.toNamed(AppRoutes.onboardingOneScreen);
      } else if (isLogin) {
        Get.toNamed(AppRoutes.homeScreenContainerScreen);
      } else {
        Get.toNamed(AppRoutes.loginScreen);
      }
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
