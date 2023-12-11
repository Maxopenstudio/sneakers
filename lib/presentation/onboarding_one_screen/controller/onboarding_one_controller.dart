import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/onboarding_one_screen/models/onboarding_one_model.dart';

class OnboardingOneController extends GetxController {
  // Rx<OnboardingOneModel> onboardingOneModelObj = OnboardingOneModel().obs;
  RxInt position = 0.obs;

  onChange(RxInt value) {
    position.value = value.value;
    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  List<OnboardingOneModel> onboardingList = [
    new OnboardingOneModel("image1.png", "msg_get_notified_when".tr, "msg_never_miss_a_drop".tr),
    new OnboardingOneModel("image2.png", "msg_best_collection".tr, "msg_never_miss_a_drop".tr),
    new OnboardingOneModel("image3.png", "msg_get_your_next_a".tr, "msg_amet_minim_mollit".tr)
  ];

  @override
  void onClose() {
    super.onClose();
  }
}
