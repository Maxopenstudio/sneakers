import 'package:get/get.dart';

import 'listcampus_item_model.dart';

class BestSellingProductModel {
  RxList<ListcampusItemModel> listcampusItemList = RxList.generate(4, (index) => ListcampusItemModel());
}
