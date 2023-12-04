import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/my_favorite_page/models/my_favorite_model.dart';

class MyFavoriteController extends GetxController {
  MyFavoriteController(this.myFavoriteModelObj);

  Rx<MyFavoriteModel> myFavoriteModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
