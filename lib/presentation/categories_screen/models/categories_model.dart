import 'package:get/get_rx/src/rx_types/rx_types.dart';

import 'categories_item_model.dart';

class CategoriesModel {
  RxList<CategoriesItemModel> categoryItemList = [
    CategoriesItemModel("cat1.png", "Running"),
    CategoriesItemModel("cat2.png", "Sneakers"),
    CategoriesItemModel("cat3.png", "Originals"),
    CategoriesItemModel("cat4.png", "Walking"),
    CategoriesItemModel("cat5.png", "Slids & Sandles"),
    CategoriesItemModel("cat6.png", "Foot Ball"),
    CategoriesItemModel("cat7.png", "Basket Ball"),
  ].obs;
}
