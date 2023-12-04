import 'package:get/get.dart';

import 'search_item_model.dart';

class SearchModel {
  RxList<SearchItemModel> searchItemList = RxList.generate(4, (index) => SearchItemModel());
}
