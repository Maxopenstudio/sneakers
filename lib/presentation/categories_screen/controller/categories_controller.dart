import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/categories_screen/models/categories_model.dart';

import '../models/categories_item_model.dart';

class CategoriesController extends GetxController {
  RxList<List<CategoriesItemModel>> categoriesModelObj = List<List<CategoriesItemModel>>.empty().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
