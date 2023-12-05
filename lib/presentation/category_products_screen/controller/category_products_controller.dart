import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/home_screen_page/models/home_screen_model.dart';

import '../../categories_screen/models/categories_item_model.dart';

class CategoryProductsController extends GetxController {
  CategoryProductsController();

  Rx<CategoriesItemModel>? selectedCategory;

  @override
  void onReady() {
    print("READy");
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
