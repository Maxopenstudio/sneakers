import 'package:get/get.dart';

import 'checkouttwo_item_model.dart';

class CheckOutTwoModel {
  RxList<CheckouttwoItemModel> checkouttwoItemList = [CheckouttwoItemModel("item1.png", "Asian", "\$21.00"), CheckouttwoItemModel("item2.png", "Centrino", "\$32.00")].obs;
}
