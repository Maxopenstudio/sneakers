import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/coupon_screen/models/coupon_model.dart';

class CouponController extends GetxController {
  Rx<CouponModel> couponModelObj = CouponModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
