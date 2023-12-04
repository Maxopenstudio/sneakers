import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';
import 'package:shoes_app/widgets/custom_button.dart';
import 'package:shoes_app/widgets/custom_checkbox.dart';

import '../order_details_one_screen/widgets/listorderid65254524one_item_widget.dart';
import 'controller/order_details_one_controller.dart';
import 'models/listorderid65254524one_item_model.dart';

class OrderDetailsOneScreen extends GetWidget<OrderDetailsOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(height: getVerticalSize(58), leadingWidth: 44, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftBlack900, margin: getMargin(left: 20, top: 17, bottom: 17), onTap: onTapArrowleft11), title: AppbarTitle(text: "lbl_order_details".tr, margin: getMargin(left: 16)), styleType: Style.bgFillWhiteA700),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 10),
                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                          Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(10));
                              },
                              itemCount: controller.orderDetailsOneModelObj.value.listorderid65254524oneItemList.length,
                              itemBuilder: (context, index) {
                                Listorderid65254524oneItemModel model = controller.orderDetailsOneModelObj.value.listorderid65254524oneItemList[index];
                                return Listorderid65254524oneItemWidget(model);
                              })),
                          Container(
                              height: getVerticalSize(674),
                              width: double.maxFinite,
                              margin: getMargin(top: 10),
                              child: Stack(alignment: Alignment.bottomCenter, children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                      Container(
                                          width: double.maxFinite,
                                          child: Container(
                                              width: double.maxFinite,
                                              padding: getPadding(left: 20, top: 13, right: 20, bottom: 13),
                                              decoration: AppDecoration.white,
                                              child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                                                Padding(padding: getPadding(top: 4), child: Text("msg_delivery_address".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline)),
                                                Container(width: getHorizontalSize(276), margin: getMargin(top: 7, right: 111), child: Text("msg_4517_washington".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtBody))
                                              ]))),
                                      CustomImageView(svgPath: ImageConstant.imgCheckmarkWhiteA700, height: getVerticalSize(8), width: getHorizontalSize(12), margin: getMargin(left: 42, top: 107))
                                    ])),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        padding: getPadding(left: 20, top: 14, right: 20, bottom: 14),
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                                          Padding(padding: getPadding(top: 3), child: Text("lbl_order_summary".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline)),
                                          Padding(padding: getPadding(top: 15), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_subtotal".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline), Text("lbl_41_00".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)])),
                                          Container(
                                              height: getVerticalSize(176),
                                              width: getHorizontalSize(388),
                                              margin: getMargin(top: 16),
                                              child: Stack(alignment: Alignment.topLeft, children: [
                                                CustomImageView(svgPath: ImageConstant.imgCheckmarkWhiteA700, height: getVerticalSize(8), width: getHorizontalSize(12), alignment: Alignment.bottomLeft, margin: getMargin(left: 22, bottom: 46)),
                                                Align(alignment: Alignment.topLeft, child: Padding(padding: getPadding(top: 18), child: Text("lbl_shipping".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline))),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                        padding: getPadding(top: 17, bottom: 17),
                                                        decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup131), fit: BoxFit.cover)),
                                                        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [
                                                          Obx(() => CustomCheckbox(
                                                              text: "lbl_flat_rate".tr,
                                                              iconSize: getHorizontalSize(24),
                                                              value: controller.checkbox.value,
                                                              margin: getMargin(top: 38),
                                                              fontStyle: CheckboxFontStyle.SFUITextRegular15,
                                                              onChange: (value) {
                                                                controller.checkbox.value = value;
                                                              })),
                                                          Obx(() => CustomCheckbox(
                                                              text: "lbl_local_pickup".tr,
                                                              iconSize: getHorizontalSize(24),
                                                              value: controller.checkbox1.value,
                                                              margin: getMargin(top: 16),
                                                              fontStyle: CheckboxFontStyle.SFUITextRegular15,
                                                              onChange: (value) {
                                                                controller.checkbox1.value = value;
                                                              })),
                                                          Obx(() => CustomCheckbox(
                                                              text: "msg_free_shipping_on".tr,
                                                              iconSize: getHorizontalSize(24),
                                                              value: controller.checkbox2.value,
                                                              margin: getMargin(top: 16, right: 82),
                                                              fontStyle: CheckboxFontStyle.SFUITextRegular15,
                                                              onChange: (value) {
                                                                controller.checkbox2.value = value;
                                                              }))
                                                        ])))
                                              ])),
                                          Padding(padding: getPadding(top: 16), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_item_total".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900), Text("lbl_43_00".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)])),
                                          Padding(padding: getPadding(top: 16), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_discount".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900), Text("lbl_2_00".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)])),
                                          Padding(
                                              padding: getPadding(top: 17),
                                              child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [Padding(padding: getPadding(top: 1), child: Text("lbl_delivery_free".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)), Padding(padding: getPadding(bottom: 1), child: Text("lbl_0_00".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900))])),
                                          Padding(padding: getPadding(top: 15), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_total".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline), Text("lbl_63_00".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)])),
                                          CustomButton(height: getVerticalSize(48), text: "lbl_view_invoice".tr, margin: getMargin(top: 32)),
                                          Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 39), child: SizedBox(width: getHorizontalSize(135), child: Divider(thickness: getVerticalSize(5), color: ColorConstant.black900))))
                                        ])))
                              ]))
                        ]))))));
  }

  onTapArrowleft11() {
    Get.back();
  }
}
