import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/home_screen_container_screen/models/home_screen_container_model.dart';

class HomeScreenContainerController extends GetxController {
  Rx<HomeScreenContainerModel> homeScreenContainerModelObj = HomeScreenContainerModel().obs;

  RxInt selectedIndex = 0.obs;

  change(int index) {
    selectedIndex.value = index;
    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {
    super.onInit();
  }
}
