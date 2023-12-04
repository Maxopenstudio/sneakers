import 'package:get/get.dart';

import 'coupon_item_model.dart';

class CouponModel {
  RxList<CouponItemModel> couponItemList = RxList.generate(3, (index) => CouponItemModel());
}
