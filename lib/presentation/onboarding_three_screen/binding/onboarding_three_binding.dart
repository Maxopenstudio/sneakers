import 'package:get/get.dart';

import '../controller/onboarding_three_controller.dart';

class OnboardingThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingThreeController());
  }
}
