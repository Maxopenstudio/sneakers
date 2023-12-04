import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';
import 'package:shoes_app/widgets/custom_button.dart';

import '../check_out_three_screen/widgets/listpngeggone_item_widget.dart';
import 'controller/check_out_three_controller.dart';
import 'models/listpngeggone_item_model.dart';

class CheckOutThreeScreen extends GetWidget<CheckOutThreeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(height: getVerticalSize(58), leadingWidth: 44, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftBlack900, margin: getMargin(left: 20, top: 17, bottom: 17), onTap: onTapArrowleft7), title: AppbarTitle(text: "lbl_order_history".tr, margin: getMargin(left: 16)), styleType: Style.bgFillWhiteA700),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 10, bottom: 10),
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                      width: double.maxFinite,
                      child: Align(
                          alignment: Alignment.center,
                          child: Container(
                              padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                              decoration: AppDecoration.white,
                              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                Text("msg_order_id_65254524".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline),
                                Padding(padding: getPadding(top: 8), child: Text("msg_order_date_june".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyGray600)),
                                Padding(
                                    padding: getPadding(top: 24),
                                    child: Obx(() => ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(height: getVerticalSize(16));
                                        },
                                        itemCount: controller.checkOutThreeModelObj.value.listpngeggoneItemList.length,
                                        itemBuilder: (context, index) {
                                          ListpngeggoneItemModel model = controller.checkOutThreeModelObj.value.listpngeggoneItemList[index];
                                          return ListpngeggoneItemWidget(model);
                                        }))),
                                Padding(
                                    padding: getPadding(top: 24),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                      Expanded(
                                          child: CustomButton(
                                        height: getVerticalSize(48),
                                        text: "lbl_view_details".tr,
                                        margin: getMargin(right: 8),
                                        variant: ButtonVariant.OutlineBlack900,
                                        padding: ButtonPadding.PaddingAll15,
                                        fontStyle: ButtonFontStyle.SFUITextSemibold14,
                                        onTap: () {
                                          Get.toNamed(AppRoutes.orderDetailsTwoScreen);
                                        },
                                      )),
                                      Expanded(child: CustomButton(height: getVerticalSize(48), text: "lbl_recoder".tr, margin: getMargin(left: 8)))
                                    ]))
                              ])))),
                  Container(
                      width: double.maxFinite,
                      child: Container(
                          margin: getMargin(top: 10),
                          padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                          decoration: AppDecoration.white,
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                            Text("msg_order_id_5485124".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline),
                            Padding(padding: getPadding(top: 8), child: Text("msg_order_date_june".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyGray600)),
                            Padding(
                                padding: getPadding(top: 24),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(children: [
                                      Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          color: ColorConstant.gray100,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder8),
                                          child: Container(
                                              height: getSize(90), width: getSize(90), padding: getPadding(left: 5, top: 4, right: 5, bottom: 4), decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: CustomImageView(imagePath: ImageConstant.imgPngegg13, height: getVerticalSize(82), width: getHorizontalSize(80), alignment: Alignment.center))),
                                      Padding(
                                          padding: getPadding(top: 4, left: 16),
                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                            Text("lbl_sparx".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline),
                                            Padding(
                                                padding: getPadding(top: 7),
                                                child: Row(children: [
                                                  Padding(padding: getPadding(bottom: 1), child: Text("lbl_12_00".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)),
                                                ])),
                                            Container(
                                              alignment: Alignment.center,
                                              height: getVerticalSize(
                                                26,
                                              ),
                                              width: getHorizontalSize(103),
                                              decoration: BoxDecoration(color: ColorConstant.deepOrange50, borderRadius: BorderRadius.circular(getHorizontalSize(8))),
                                              child: Text("lbl_cancelled".tr,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: ColorConstant.red500,
                                                    fontSize: getFontSize(
                                                      15,
                                                    ),
                                                    fontFamily: 'SF UI Text',
                                                    fontWeight: FontWeight.w400,
                                                    height: getVerticalSize(
                                                      1.20,
                                                    ),
                                                  )),
                                              margin: getMargin(
                                                top: 8,
                                              ),
                                            ),
                                          ]))
                                    ]),
                                    Text("lbl_qty_12".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)
                                  ],
                                )),
                            CustomButton(
                                onTap: () {
                                  Get.toNamed(AppRoutes.orderDetailsTwoScreen);
                                },
                                height: getVerticalSize(48),
                                text: "lbl_view_details".tr,
                                margin: getMargin(top: 24),
                                variant: ButtonVariant.OutlineBlack900,
                                padding: ButtonPadding.PaddingAll15,
                                fontStyle: ButtonFontStyle.SFUITextSemibold14)
                          ]))),
                  Spacer(),
                  Padding(padding: getPadding(bottom: 4), child: SizedBox(width: getHorizontalSize(135), child: Divider(thickness: getVerticalSize(5), color: ColorConstant.black900)))
                ]))));
  }

  onTapArrowleft7() {
    Get.back();
  }
}
