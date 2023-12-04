import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/core/utils/validation_functions.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';
import 'package:shoes_app/widgets/custom_button.dart';
import 'package:shoes_app/widgets/custom_icon_button.dart';
import 'package:shoes_app/widgets/custom_text_form_field.dart';

import '../check_out_one_screen/widgets/checkoutone_item_widget.dart';
import 'controller/check_out_one_controller.dart';
import 'models/checkoutone_item_model.dart';

// ignore_for_file: must_be_immutable
class CheckOutOneScreen extends GetWidget<CheckOutOneController> {
  static final GlobalKey<FormState> _checkoutformKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(height: getVerticalSize(58), leadingWidth: 44, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftBlack900, margin: getMargin(left: 20, top: 17, bottom: 17), onTap: onTapArrowleft5), title: AppbarTitle(text: "lbl_check_out".tr, margin: getMargin(left: 16)), styleType: Style.bgFillWhiteA700),
            body: Form(
                key: _checkoutformKey,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Padding(
                        padding: getPadding(top: 10, bottom: 5),
                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                          Container(
                              margin: getMargin(bottom: 10),
                              width: double.maxFinite,
                              child: Container(
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
                                              child: Container(alignment: Alignment.center, width: getSize(24), height: getSize(24), decoration: AppDecoration.txtFillGray10001.copyWith(borderRadius: BorderRadiusStyle.txtCircleBorder12), child: Text("lbl_3".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtSFUITextRegular15Gray600))),
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
                                              child: Container(alignment: Alignment.center, width: getSize(24), height: getSize(24), decoration: AppDecoration.black.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: Container(height: getSize(10), width: getSize(10), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(5))))))
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
                                // Container(
                                //     width: double.maxFinite,
                                //     child: Container(
                                //         padding: getPadding(
                                //             left: 20,
                                //             top: 16,
                                //             right: 20,
                                //             bottom: 6),
                                //         decoration: AppDecoration.white,
                                //         child: Column(
                                //             crossAxisAlignment:
                                //                 CrossAxisAlignment.start,
                                //             mainAxisAlignment:
                                //                 MainAxisAlignment.start,
                                //             children: [
                                //               Text("lbl_saved_cards".tr,
                                //                   overflow:
                                //                       TextOverflow.ellipsis,
                                //                   textAlign: TextAlign.left,
                                //                   style:
                                //                       AppStyle.txtHeadline),
                                //               GetBuilder<
                                //                   CheckOutOneController>(
                                //                 init:
                                //                     CheckOutOneController(),
                                //                 builder: (controller) =>
                                //                     ListView.separated(
                                //                         primary: false,
                                //                         shrinkWrap: true,
                                //                         itemBuilder:
                                //                             (context,
                                //                                 index) {
                                //                           CheckoutoneItemModel
                                //                               model =
                                //                               controller
                                //                                   .checkOutOneModelObj
                                //                                   .value
                                //                                   .cardLists[index];
                                //                           return Row(
                                //                               mainAxisAlignment:
                                //                                   MainAxisAlignment
                                //                                       .spaceBetween,
                                //                               children: [
                                //                                 Padding(
                                //                                     padding: getPadding(
                                //                                         top:
                                //                                             8,
                                //                                         bottom:
                                //                                             8),
                                //                                     child: CustomRadioButton(
                                //                                         text: model.name,
                                //                                         iconSize: getHorizontalSize(24),
                                //                                         value: model.name,
                                //                                         groupValue: controller.radioGroup.value,
                                //                                         margin: getMargin(top: 8, bottom: 8),
                                //                                         fontStyle: RadioFontStyle.SFUITextRegular17,
                                //                                         onChange: (value) {
                                //                                           controller.changeRadioGroup(value);
                                //                                         })),
                                //                                 CustomIconButton(
                                //                                     height:
                                //                                         40,
                                //                                     width:
                                //                                         40,
                                //                                     variant:
                                //                                         IconButtonVariant
                                //                                             .FillGray100,
                                //                                     shape: IconButtonShape
                                //                                         .RoundedBorder8,
                                //                                     padding:
                                //                                         IconButtonPadding
                                //                                             .PaddingAll8,
                                //                                     child: CustomImageView(
                                //                                         svgPath:
                                //                                             ImageConstant.imagePath + model.image))
                                //                               ]);
                                //                         },
                                //                         separatorBuilder:
                                //                             (context,
                                //                                 index) {
                                //                           return SizedBox();
                                //                         },
                                //                         itemCount: controller
                                //                             .checkOutOneModelObj
                                //                             .value
                                //                             .cardLists
                                //                             .length),
                                //               )
                                //             ]))),
                                GetBuilder<CheckOutOneController>(
                                  init: CheckOutOneController(),
                                  builder: (controller) => Container(
                                      width: double.maxFinite,
                                      child: Container(
                                          margin: getMargin(top: 10),
                                          padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                                          decoration: AppDecoration.white,
                                          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                            GestureDetector(
                                              onTap: () {
                                                controller.changeExpand();
                                              },
                                              child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                CustomIconButton(height: 40, width: 40, variant: IconButtonVariant.FillGray100, shape: IconButtonShape.RoundedBorder8, padding: IconButtonPadding.PaddingAll8, child: CustomImageView(svgPath: ImageConstant.imgVolume)),
                                                Padding(padding: getPadding(left: 16, top: 10, bottom: 8), child: Text("msg_credit_debit_card".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)),
                                                Spacer(),
                                                CustomImageView(svgPath: controller.expand.value ? ImageConstant.imgArrowup : ImageConstant.imagePath + "down_arrow.svg", height: getSize(24), width: getSize(24), margin: getMargin(top: 8, bottom: 8))
                                              ]),
                                            ),
                                            controller.expand.value
                                                ? Column(
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(top: 8),
                                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                            Text("lbl_card_number".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900),
                                                            CustomTextFormField(
                                                                focusNode: FocusNode(),
                                                                controller: controller.group146Controller,
                                                                hintText: "msg_enter_card_number".tr,
                                                                margin: getMargin(top: 8),
                                                                textInputType: TextInputType.number,
                                                                validator: (value) {
                                                                  if (!isNumeric(value)) {
                                                                    return "Please enter valid number";
                                                                  }
                                                                  return null;
                                                                })
                                                          ])),
                                                      Padding(
                                                          padding: getPadding(top: 16),
                                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                            Text("msg_card_holder_name".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900),
                                                            CustomTextFormField(
                                                                focusNode: FocusNode(),
                                                                controller: controller.group147Controller,
                                                                hintText: "msg_enter_card_holder".tr,
                                                                margin: getMargin(top: 8),
                                                                validator: (value) {
                                                                  if (!isText(value)) {
                                                                    return "Please enter valid text";
                                                                  }
                                                                  return null;
                                                                })
                                                          ])),
                                                      Padding(
                                                          padding: getPadding(top: 24),
                                                          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                            Expanded(
                                                                child: Padding(
                                                                    padding: getPadding(top: 1, right: 8),
                                                                    child: Column(
                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                        children: [Text("lbl_expiray_date".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900), CustomTextFormField(width: getHorizontalSize(186), focusNode: FocusNode(), controller: controller.group148Controller, hintText: "lbl_date".tr, margin: getMargin(top: 7))]))),
                                                            Expanded(
                                                                child: Padding(
                                                                    padding: getPadding(left: 8),
                                                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                      Text("lbl_cvv".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900),
                                                                      CustomTextFormField(width: getHorizontalSize(186), focusNode: FocusNode(), controller: controller.group149Controller, hintText: "lbl_cvv".tr, margin: getMargin(top: 8), textInputAction: TextInputAction.done)
                                                                    ])))
                                                          ]))
                                                    ],
                                                  )
                                                : SizedBox(),
                                          ]))),
                                ),
                                Padding(
                                    padding: getPadding(top: 10, bottom: 104),
                                    child: Obx(() => ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(height: getVerticalSize(10));
                                        },
                                        itemCount: controller.checkOutOneModelObj.value.checkoutoneItemList.length,
                                        itemBuilder: (context, index) {
                                          CheckoutoneItemModel model = controller.checkOutOneModelObj.value.checkoutoneItemList[index];
                                          return CheckoutoneItemWidget(model);
                                        }))),
                              ],
                            ),
                          )
                        ])),
                    CustomButton(
                        onTap: () {
                          Get.toNamed(AppRoutes.checkOutTwoScreen);
                        },
                        height: getVerticalSize(48),
                        text: "lbl_next".tr,
                        margin: getMargin(left: 20, top: 16, right: 20, bottom: 24)),
                  ],
                ))));
  }

  onTapArrowleft5() {
    Get.back();
  }
}
