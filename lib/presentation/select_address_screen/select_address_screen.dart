import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';
import 'package:shoes_app/widgets/custom_button.dart';

import '../select_address_screen/widgets/selectaddress_item_widget.dart';
import 'controller/select_address_controller.dart';
import 'models/select_address_model.dart';

class SelectAddressScreen extends GetWidget<SelectAddressController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(height: getVerticalSize(58), leadingWidth: 44, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftBlack900, margin: getMargin(left: 20, top: 17, bottom: 17), onTap: onTapArrowleft4), title: AppbarTitle(text: "lbl_select_address".tr, margin: getMargin(left: 16, top: 16, bottom: 16)), styleType: Style.bgFillWhiteA700),
            body: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                    width: double.maxFinite,
                    padding: getPadding(top: 10),
                    child: Column(children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(left: 20, top: 24, right: 20, bottom: 24),
                              decoration: AppDecoration.white,
                              child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                Container(
                                    padding: getPadding(right: 20, left: 18),
                                    height: getVerticalSize(24),
                                    child: Stack(alignment: Alignment.center, children: [
                                      Align(alignment: Alignment.bottomCenter, child: Padding(padding: getPadding(bottom: 11, top: 13), child: SizedBox(width: getHorizontalSize(341), child: Divider(thickness: getVerticalSize(2), color: ColorConstant.gray300)))),
                                      Align(alignment: Alignment.center, child: Container(alignment: Alignment.center, width: getSize(24), height: getSize(24), decoration: AppDecoration.txtFillGray10001.copyWith(borderRadius: BorderRadiusStyle.txtCircleBorder12), child: Text("lbl_22".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtSFUITextRegular15Gray60001))),
                                      Align(
                                          alignment: Alignment.centerRight, child: Container(alignment: Alignment.center, width: getSize(24), height: getSize(24), decoration: AppDecoration.txtFillGray10001.copyWith(borderRadius: BorderRadiusStyle.txtCircleBorder12), child: Text("lbl_3".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtSFUITextRegular15Gray600))),
                                      Align(
                                          alignment: Alignment.centerLeft,
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
                          primary: true,
                          shrinkWrap: false,
                          children: [
                            Column(
                              children: [
                                Padding(
                                    padding: getPadding(top: 10),
                                    child: Obx(() => ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        primary: false,
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(height: getVerticalSize(10));
                                        },
                                        itemCount: controller.addresses.value.addresses.length,
                                        itemBuilder: (context, index) {
                                          Address model = controller.addresses.value.addresses[index];
                                          String selectedAddressId = controller.addresses.value.addressId;
                                          bool isSelectedAddress = selectedAddressId == model.addressId;
                                          controller.fullAddressSet = index;
                                          return SelectaddressItemWidget(model, controller.fullAddress, initialSelected: isSelectedAddress);
                                        }))),
                                CustomButton(onTap: () => Get.toNamed(AppRoutes.addNewAddressScreen), height: getVerticalSize(40), text: "msg_add_new_address".tr, margin: getMargin(left: 20, top: 16, right: 20, bottom: 104), variant: ButtonVariant.OutlineBlack900, fontStyle: ButtonFontStyle.SFUITextSemibold14),
                              ],
                            ),
                          ],
                        ),
                      )
                      // Spacer(),
                    ])),
                CustomButton(
                    onTap: () {
                      Get.toNamed(AppRoutes.checkOutPaymentMethodScreen);
                    },
                    height: getVerticalSize(48),
                    text: "lbl_next".tr,
                    margin: getMargin(left: 20, right: 20, bottom: 24)),
              ],
            )));
  }

  onTapArrowleft4() {
    Get.back();
  }
}
