import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/categories_screen/models/categories_model.dart';

class CategoriesController extends GetxController {
  Rx<CategoriesModel> categoriesModelObj = CategoriesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
