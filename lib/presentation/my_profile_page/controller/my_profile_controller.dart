import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/my_profile_page/models/my_profile_model.dart';

class MyProfileController extends GetxController {
  MyProfileController(this.myProfileModelObj);

  Rx<MyProfileModel> myProfileModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
