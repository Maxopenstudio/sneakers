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
    new OnboardingOneModel("image1.png", "Get notified when new stock arrival", "Never miss a drop of your sneakers’s drop! our app provides a release calender with seccude."),
    new OnboardingOneModel("image2.png", "Best collection of sparx of the drop", "Never miss a drop of your sneakers’s drop! our app provides a release calender with seccude."),
    new OnboardingOneModel("image3.png", "Get Your Next a drop Kicks Now!", "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit official.")
  ];

  @override
  void onClose() {
    super.onClose();
  }
}
