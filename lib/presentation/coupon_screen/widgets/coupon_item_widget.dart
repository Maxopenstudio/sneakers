import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';

import '../controller/coupon_controller.dart';
import '../models/coupon_item_model.dart';

// ignore: must_be_immutable
class CouponItemWidget extends StatelessWidget {
  CouponItemWidget(this.couponItemModelObj);

  CouponItemModel couponItemModelObj;

  var controller = Get.find<CouponController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: getPadding(top: 16, bottom: 16, left: 20, right: 20),
      decoration: AppDecoration.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_10_off".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtHeadline,
              ),
              Container(
                margin: getMargin(
                  top: 8,
                ),
                child: Text(
                  "msg_mauris_nunccongue".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtBodyBlack9001,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 16,
                ),
                child: Text(
                  "msg_expiray_on_12".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSFUITextRegular15Gray600,
                ),
              ),
            ],
          ),
          DottedBorder(
            color: ColorConstant.black900,
            strokeWidth: getHorizontalSize(
              1,
            ),
            radius: Radius.circular(
              8,
            ),
            borderType: BorderType.RRect,
            dashPattern: [
              2,
              2,
            ],
            child: Container(
              padding: getPadding(
                left: 16,
                top: 10,
                right: 16,
                bottom: 10,
              ),
              decoration: AppDecoration.outlineBlack900.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_watch123".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFUITextRegular15Black900,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
