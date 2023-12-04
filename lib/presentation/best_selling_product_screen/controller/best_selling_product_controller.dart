import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/home_screen_page/models/home_screen_model.dart';

class BestSellingProductController extends GetxController {
  BestSellingProductController(this.bestSellingProductModelObj);

  Rx<HomeScreenModel> bestSellingProductModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
