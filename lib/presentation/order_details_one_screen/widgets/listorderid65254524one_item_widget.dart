import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/custom_button.dart';

import '../controller/order_details_one_controller.dart';
import '../models/listorderid65254524one_item_model.dart';

// ignore: must_be_immutable
class Listorderid65254524oneItemWidget extends StatelessWidget {
  Listorderid65254524oneItemWidget(this.listorderid65254524oneItemModelObj);

  Listorderid65254524oneItemModel listorderid65254524oneItemModelObj;

  var controller = Get.find<OrderDetailsOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 20,
        top: 16,
        right: 20,
        bottom: 16,
      ),
      decoration: AppDecoration.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "msg_order_id_65254524".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtHeadline,
          ),
          Text(
            "msg_order_date_june".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtBodyGray600,
          ),
          Padding(
            padding: getPadding(
              top: 23,
              right: 1,
            ),
            child: FittedBox(
              fit: BoxFit.contain,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      color: ColorConstant.gray100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Container(
                        height: getSize(
                          90,
                        ),
                        width: getSize(
                          90,
                        ),
                        padding: getPadding(
                          left: 5,
                          top: 4,
                          right: 5,
                          bottom: 4,
                        ),
                        decoration: AppDecoration.fillGray100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgPngegg14,
                          height: getVerticalSize(
                            82,
                          ),
                          width: getHorizontalSize(
                            80,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 4,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_asian".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtHeadline,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 9,
                          ),
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "lbl_21_00".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtBodyBlack900,
                                ),
                                SizedBox(width: 100,),
                                Text(
                                  "lbl_qty_12".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtBodyBlack900,
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomButton(
                          height: getVerticalSize(
                            26,
                          ),
                          width: getHorizontalSize(
                            99,
                          ),
                          text: "lbl_delivered".tr,
                          margin: getMargin(
                            top: 7,
                          ),
                          variant: ButtonVariant.FillGreen100,
                          padding: ButtonPadding.PaddingAll3,
                          fontStyle: ButtonFontStyle.SFUITextRegular15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: getVerticalSize(
              51,
            ),
            width: getHorizontalSize(
              388,
            ),
            margin: getMargin(
              top: 24,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgCheckmarkWhiteA700,
                  height: getVerticalSize(
                    8,
                  ),
                  width: getHorizontalSize(
                    12,
                  ),
                  alignment: Alignment.topLeft,
                  margin: getMargin(
                    left: 22,
                    top: 7,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: getVerticalSize(
                          24,
                        ),
                        width: getHorizontalSize(
                          355,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: getPadding(
                                  bottom: 9,
                                ),
                                child: SizedBox(
                                  width: getHorizontalSize(
                                    341,
                                  ),
                                  child: Divider(
                                    thickness: getVerticalSize(
                                      2,
                                    ),
                                    color: ColorConstant.gray300,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: getSize(
                                  24,
                                ),
                                padding: getPadding(
                                  left: 8,
                                  top: 2,
                                  right: 8,
                                  bottom: 2,
                                ),
                                decoration: AppDecoration.txtFillGray10001.copyWith(
                                  borderRadius: BorderRadiusStyle.txtCircleBorder12,
                                ),
                                child: Text(
                                  "lbl_22".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSFUITextRegular15Gray60001,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                width: getSize(
                                  24,
                                ),
                                padding: getPadding(
                                  left: 7,
                                  top: 2,
                                  right: 7,
                                  bottom: 2,
                                ),
                                decoration: AppDecoration.txtFillGray10001.copyWith(
                                  borderRadius: BorderRadiusStyle.txtCircleBorder12,
                                ),
                                child: Text(
                                  "lbl_3".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSFUITextRegular15Gray600,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: getSize(
                                  24,
                                ),
                                width: getSize(
                                  24,
                                ),
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgGroup4010,
                                      height: getSize(
                                        24,
                                      ),
                                      width: getSize(
                                        24,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: getPadding(
                                          bottom: 2,
                                        ),
                                        child: Text(
                                          "lbl_1".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtSFUITextRegular15Gray60001,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "lbl_processing".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSFUITextRegular15Gray600,
                          ),
                          Text(
                            "lbl_shipped".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSFUITextRegular15Gray600,
                          ),
                          Padding(
                            padding: getPadding(
                              bottom: 1,
                            ),
                            child: Text(
                              "lbl_delivered".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSFUITextRegular15Gray600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomButton(
                    height: getVerticalSize(
                      48,
                    ),
                    text: "lbl_return".tr,
                    margin: getMargin(
                      right: 8,
                    ),
                    variant: ButtonVariant.OutlineBlack900,
                    padding: ButtonPadding.PaddingAll15,
                    fontStyle: ButtonFontStyle.SFUITextSemibold14,
                  ),
                ),
                Expanded(
                  child: CustomButton(
                    height: getVerticalSize(
                      48,
                    ),
                    text: "lbl_write_a_review".tr,
                    margin: getMargin(
                      left: 8,
                    ),
                    variant: ButtonVariant.OutlineBlack900,
                    padding: ButtonPadding.PaddingAll15,
                    fontStyle: ButtonFontStyle.SFUITextSemibold14,
                  ),
                ),
              ],
            ),
          ),
          CustomButton(
            height: getVerticalSize(
              48,
            ),
            text: "lbl_recoder".tr,
            margin: getMargin(
              top: 16,
            ),
          ),
        ],
      ),
    );
  }
}
