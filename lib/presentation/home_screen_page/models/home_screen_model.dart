import 'package:get/get.dart';

import '../../categories_screen/models/categories_item_model.dart';
import 'product_model.dart';
import 'listname_item_model.dart';
import 'listwalkingfitness_item_model.dart';

class HomeScreenModel {
  RxList<String> sliderlovelysportcoItemList = ["banner1.png", "banner2.png"].obs;

  RxList<CategoriesItemModel> categoryList = List<CategoriesItemModel>.empty().obs;

  RxList<ProductModel> homescreenItemList = List<ProductModel>.empty().obs; // TODO: Переделать взятие с Best Selling Product

  RxList<ListnameItemModel> listnameItemList = [ListnameItemModel("Men’s Nike Shoes", "\$45.00", "featured1.png"), ListnameItemModel("Men’s Sparcle Shoes", "\$45.00", "featured2.png")].obs;

  RxList<ListwalkingfitnessItemModel> listwalkingfitnessItemList = [ListwalkingfitnessItemModel("blog1.png"), ListwalkingfitnessItemModel("blog2.png")].obs;

  HomeScreenModel copyWith({
    RxList<String>? sliderlovelysportcoItemList,
    RxList<CategoriesItemModel>? categoryList,
    RxList<ProductModel>? homescreenItemList,
    RxList<ListnameItemModel>? listnameItemList,
    RxList<ListwalkingfitnessItemModel>? listwalkingfitnessItemList,
  }) {
    return HomeScreenModel.update(
      sliderlovelysportcoItemList: sliderlovelysportcoItemList ?? this.sliderlovelysportcoItemList,
      categoryList: categoryList ?? this.categoryList,
      homescreenItemList: homescreenItemList ?? this.homescreenItemList,
      listnameItemList: listnameItemList ?? this.listnameItemList,
      listwalkingfitnessItemList: listwalkingfitnessItemList ?? this.listwalkingfitnessItemList,
    );
  }

  HomeScreenModel();

  HomeScreenModel.update({
    required this.sliderlovelysportcoItemList,
    required this.categoryList,
    required this.homescreenItemList,
    required this.listnameItemList,
    required this.listwalkingfitnessItemList,
  });
}
