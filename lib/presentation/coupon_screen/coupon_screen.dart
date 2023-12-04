import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';
import 'package:shoes_app/widgets/custom_button.dart';

import '../coupon_screen/widgets/coupon_item_widget.dart';
import 'controller/coupon_controller.dart';
import 'models/coupon_item_model.dart';

class CouponScreen extends GetWidget<CouponController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(height: getVerticalSize(58), leadingWidth: 44, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftBlack900, margin: getMargin(left: 20, top: 17, bottom: 17), onTap: onTapArrowleft10), title: AppbarTitle(text: "lbl_coupon".tr, margin: getMargin(left: 16)), styleType: Style.bgFillWhiteA700),
            body: Obx(() => Stack(
                  children: [
                    ListView.separated(
                        padding: getPadding(top: 10, bottom: 100),
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: getVerticalSize(10));
                        },
                        itemCount: controller.couponModelObj.value.couponItemList.length,
                        itemBuilder: (context, index) {
                          CouponItemModel model = controller.couponModelObj.value.couponItemList[index];
                          return CouponItemWidget(model);
                        }),
                    CustomButton(
                        onTap: () {
                          Get.back();
                        },
                        alignment: Alignment.bottomCenter,
                        height: getVerticalSize(48),
                        text: "lbl_apply".tr,
                        margin: getMargin(left: 20, right: 20, bottom: 24)),
                  ],
                ))));
  }

  onTapArrowleft10() {
    Get.back();
  }
}
