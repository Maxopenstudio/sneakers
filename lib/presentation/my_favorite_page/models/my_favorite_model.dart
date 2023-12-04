import 'package:get/get.dart';

import 'myfavorite_item_model.dart';

class MyFavoriteModel {
  RxList<MyfavoriteItemModel> myfavoriteItemList = [
    new MyfavoriteItemModel("Campus", "\$10.00", "shoes1.png"),
    new MyfavoriteItemModel("Centrino", "\$25.00", "shoes2.png"),
    new MyfavoriteItemModel("Sparx", "\$10.00", "shoes3.png"),
    new MyfavoriteItemModel("Asian", "\$21.00", "shoes4.png"),
  ].obs;
}
