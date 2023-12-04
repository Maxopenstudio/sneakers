import 'package:get/get.dart';

import 'homescreen_item_model.dart';
import 'listname_item_model.dart';
import 'listwalkingfitness_item_model.dart';

class HomeScreenModel {
  RxList<String> sliderlovelysportcoItemList = ["banner1.png", "banner2.png"].obs;

  RxList<String> categoryList = ["Men", "Women", "Kids"].obs;

  RxList<HomescreenItemModel> homescreenItemList = [
    new HomescreenItemModel("Campus", "\$10.00", "shoes1.png", ""),
    new HomescreenItemModel("Centrino", "\$25.00", "shoes2.png", "\$32.00"),
    new HomescreenItemModel("Sparx", "\$10.00", "shoes3.png", "\$12.00"),
    new HomescreenItemModel("Asian", "\$21.00", "shoes4.png", ""),
    new HomescreenItemModel("Sparx", "\$12.00", "shoes5.png", ""),
    new HomescreenItemModel("Asian", "\$21.00", "shoes6.png", ""),
    new HomescreenItemModel("Sparx", "\$12.00", "shoes5.png", ""),
    new HomescreenItemModel("Asian", "\$21.00", "shoes6.png", ""),
  ].obs;

  RxList<ListnameItemModel> listnameItemList = [ListnameItemModel("Men’s Nike Shoes", "\$45.00", "featured1.png"), ListnameItemModel("Men’s Sparcle Shoes", "\$45.00", "featured2.png")].obs;

  RxList<ListwalkingfitnessItemModel> listwalkingfitnessItemList = [ListwalkingfitnessItemModel("blog1.png"), ListwalkingfitnessItemModel("blog2.png")].obs;
}
