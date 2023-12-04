import 'package:get/get.dart';

import 'selectaddress_item_model.dart';

class SelectAddressModel {
  RxList<SelectaddressItemModel> selectaddressItemList = [SelectaddressItemModel("Home", "4517 washington ave. manchester, kentucky 39495"), SelectaddressItemModel("Work", "1901 Thornridge Cir. Shiloh, Hawaii 81063"), SelectaddressItemModel("Other", "3517 W. Gray St. Utica, Pennsylvania 57867")].obs;
}
