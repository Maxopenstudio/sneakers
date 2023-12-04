import 'package:get/get.dart';

import '../controller/onboarding_two_controller.dart';

class OnboardingTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingTwoController());
  }
}
