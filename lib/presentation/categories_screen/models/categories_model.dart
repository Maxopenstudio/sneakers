import 'package:get/get_rx/src/rx_types/rx_types.dart';

import 'categories_item_model.dart';

class CategoriesModel {
  RxList<CategoriesItemModel> categoryItemList = [
    CategoriesItemModel("cat1.png", "Running", 0, 0, []),
    CategoriesItemModel("cat2.png", "Sneakers", 0, 0, []),
    CategoriesItemModel("cat3.png", "Originals", 0, 0, []),
    CategoriesItemModel("cat4.png", "Walking", 0, 0, []),
    CategoriesItemModel("cat5.png", "Slids & Sandles", 0, 0, []),
    CategoriesItemModel("cat6.png", "Foot Ball", 0, 0, []),
    CategoriesItemModel("cat7.png", "Basket Ball", 0, 0, []),
  ].obs;
}
