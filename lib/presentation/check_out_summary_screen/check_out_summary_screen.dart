import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/check_out_payment_method_screen/controller/check_out_payment_method_controller.dart';
import 'package:shoes_app/presentation/check_out_summary_screen/controller/check_out_summary_controller.dart';
import 'package:shoes_app/presentation/check_out_summary_screen/widgets/checkouttwo_item_widget.dart';
import 'package:shoes_app/presentation/select_address_screen/controller/select_address_controller.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';
import 'package:shoes_app/widgets/custom_button.dart';
import 'package:shoes_app/widgets/custom_checkbox.dart';
import 'package:shoes_app/widgets/custom_icon_button.dart';

import '../payment_done_dialog/controller/payment_done_controller.dart';
import '../payment_done_dialog/payment_done_dialog.dart';
import 'models/checkouttwo_item_model.dart';

class CheckOutSummaryScreen extends GetWidget<CheckOutSummaryController> {
  SelectAddressController addressController = Get.find<SelectAddressController>();
  CheckOutPaymentMethodController paymentMethodController = Get.find<CheckOutPaymentMethodController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(height: getVerticalSize(58), leadingWidth: 44, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftBlack900, margin: getMargin(left: 20, top: 17, bottom: 17), onTap: onTapArrowleft6), title: AppbarTitle(text: "lbl_check_out".tr, margin: getMargin(left: 16)), styleType: Style.bgFillWhiteA700),
            body: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox(
                    width: size.width,
                    child: Padding(
                        padding: getPadding(top: 10),
                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  margin: getMargin(bottom: 10),
                                  padding: getPadding(left: 18, top: 23, right: 18, bottom: 23),
                                  decoration: AppDecoration.white,
                                  child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                    Container(
                                        height: getVerticalSize(24),
                                        padding: getPadding(right: 20, left: 18),
                                        child: Stack(alignment: Alignment.centerRight, children: [
                                          Align(alignment: Alignment.bottomCenter, child: Padding(padding: getPadding(bottom: 11, top: 13), child: SizedBox(width: getHorizontalSize(341), child: Divider(thickness: getVerticalSize(2), color: ColorConstant.gray300)))),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child:
                                                  Container(alignment: Alignment.center, width: getSize(24), height: getSize(24), decoration: AppDecoration.black.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: Container(height: getSize(10), width: getSize(10), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(5)))))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                alignment: Alignment.center,
                                                width: getSize(24),
                                                height: getSize(24),
                                                decoration: AppDecoration.black.copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
                                                child: CustomImageView(svgPath: ImageConstant.imgCheckmarkWhiteA700, height: getVerticalSize(8), width: getHorizontalSize(12), alignment: Alignment.center),
                                              )),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                alignment: Alignment.center,
                                                width: getSize(24),
                                                height: getSize(24),
                                                decoration: AppDecoration.black.copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
                                                child: CustomImageView(svgPath: ImageConstant.imgCheckmarkWhiteA700, height: getVerticalSize(8), width: getHorizontalSize(12), alignment: Alignment.center),
                                              ))
                                        ])),
                                    Padding(
                                        padding: getPadding(left: 2, top: 8),
                                        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                          Padding(padding: getPadding(bottom: 1), child: Text("lbl_address".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Gray600)),
                                          Spacer(flex: 51),
                                          Padding(padding: getPadding(top: 1), child: Text("lbl_payment".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Gray600)),
                                          Spacer(flex: 48),
                                          Padding(padding: getPadding(top: 1), child: Text("lbl_summary".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Gray600))
                                        ]))
                                  ]))),
                          Expanded(
                            child: ListView(
                              children: [
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                                        decoration: AppDecoration.white,
                                        child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Text("lbl_item_details".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline),
                                          Padding(
                                              padding: getPadding(top: 16),
                                              child: Obx(() => ListView.separated(
                                                  physics: NeverScrollableScrollPhysics(),
                                                  shrinkWrap: true,
                                                  separatorBuilder: (context, index) {
                                                    return SizedBox(height: getVerticalSize(16));
                                                  },
                                                  itemCount: controller.checkOutTwoModelObj.value.checkouttwoItemList.length,
                                                  itemBuilder: (context, index) {
                                                    CheckouttwoItemModel model = controller.checkOutTwoModelObj.value.checkouttwoItemList[index];
                                                    print("CHECKOUT: ${model.name}");
                                                    return CheckouttwoItemWidget(model);
                                                  })))
                                        ]))),
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        margin: getMargin(top: 10),
                                        padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                                        decoration: AppDecoration.white,
                                        child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                                          Text("msg_delivery_address".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline),
                                          Padding(
                                            padding: getPadding(top: 16),
                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                              Container(margin: getMargin(right: 85), child: FittedBox(child: Text(addressController.selectedAddressString ?? "No address", maxLines: 3, textAlign: TextAlign.left, style: AppStyle.txtBody))),
                                              //CustomImageView(svgPath: ImageConstant.imgEdit, height: getSize(24), width: getSize(24), margin: getMargin(top: 5)),
                                            ]),
                                          ),
                                        ]))),
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        margin: getMargin(top: 10),
                                        padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                                        decoration: AppDecoration.white,
                                        child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Text("lbl_payment_details".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline),
                                          Padding(
                                              padding: getPadding(top: 16),
                                              child: Row(children: [
                                                Text(paymentMethodController.selectedPaymentMethodString ?? "No payment method selected", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900),
                                                /*
                                                CustomIconButton(height: 40, width: 40, variant: IconButtonVariant.FillGray100, shape: IconButtonShape.RoundedBorder8, padding: IconButtonPadding.PaddingAll8, child: CustomImageView(svgPath: ImageConstant.imgVolume)),
                                                Container(
                                                    // width: getHorizontalSize(
                                                    //     162),
                                                    margin: getMargin(left: 16),
                                                    child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [Text("msg_credit_debit_card".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900), Padding(padding: getPadding(top: 2), child: Text("msg_6895_7852_5898_4200".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Gray600))])),

                                                 */
                                                Spacer(),
                                                //CustomImageView(svgPath: ImageConstant.imgEdit, height: getSize(24), width: getSize(24))
                                              ]))
                                        ]))),
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        margin: getMargin(top: 10),
                                        padding: getPadding(left: 20, top: 16, right: 20, bottom: 96),
                                        decoration: AppDecoration.white,
                                        child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                                          Text("lbl_shipping".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline),
                                          Obx(() => CustomCheckbox(
                                              text: "lbl_flat_rate".tr,
                                              iconSize: getHorizontalSize(24),
                                              value: controller.checkbox.value,
                                              margin: getMargin(top: 15),
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
                                              })),
                                          Padding(
                                            padding: getPadding(top: 16),
                                            child: Text("lbl_order_summary".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline),
                                          ),
                                          Padding(padding: getPadding(top: 16), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_subtotal".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline), Text("lbl_41_00".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)])),
                                          Padding(
                                              padding: getPadding(top: 16),
                                              child: Divider(
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.gray300,
                                                height: 0,
                                              )),
                                          Padding(padding: getPadding(top: 16), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_item_total".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900), Text("lbl_43_00".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)])),
                                          Padding(padding: getPadding(top: 16), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_discount".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900), Text("lbl_2_00".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)])),
                                          Padding(
                                              padding: getPadding(top: 17),
                                              child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [Padding(padding: getPadding(top: 1), child: Text("lbl_delivery_free".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)), Padding(padding: getPadding(bottom: 1), child: Text("lbl_0_00".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900))])),
                                          Padding(padding: getPadding(top: 15), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_total".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline), Text("lbl_63_00".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)])),
                                        ])))
                              ],
                            ),
                          )
                        ]))),
                CustomButton(
                    onTap: () {
                      Get.dialog(AlertDialog(
                        backgroundColor: Colors.transparent,
                        contentPadding: EdgeInsets.zero,
                        insetPadding: EdgeInsets.only(left: 0),
                        content: PaymentDoneDialog(
                          Get.put(
                            PaymentDoneController(),
                          ),
                        ),
                      ));
                    },
                    height: getVerticalSize(48),
                    text: "lbl_pay_now".tr,
                    margin: getMargin(right: 20, left: 20, bottom: 24)),
              ],
            )));
  }

  onTapArrowleft6() {
    Get.back();
  }
}
