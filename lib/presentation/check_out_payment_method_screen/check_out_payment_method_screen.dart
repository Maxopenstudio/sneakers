import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/check_out_payment_method_screen/controller/check_out_payment_method_controller.dart';
import 'package:shoes_app/presentation/check_out_payment_method_screen/models/payment_method.dart';
import 'package:shoes_app/presentation/check_out_payment_method_screen/widgets/checkoutone_item_widget.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';
import 'package:shoes_app/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class CheckOutPaymentMethodScreen extends GetWidget<CheckOutPaymentMethodController> {
  static final GlobalKey<FormState> _checkoutformKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    controller.updatePaymentMethods();
    print("paymentMethodCode: ${controller.paymentMethodCode.value}");
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
                            child: Padding(
                                padding: getPadding(top: 10, bottom: 104),
                                child: Obx(() => ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(height: getVerticalSize(10));
                                    },
                                    itemCount: controller.paymentMethods.length,
                                    itemBuilder: (context, index) {
                                      PaymentMethod model = controller.paymentMethods[index];
                                      print("CHECKOUT ITEM: ${model.title}");
                                      return CheckoutoneItemWidget(model);
                                    }))),
                          )
                        ])),
                    GetBuilder<CheckOutPaymentMethodController>(builder: (contrl) {
                      return CustomButton(
                          onTap: contrl.paymentMethodCode.value == "" ? null : () {
                            Get.toNamed(AppRoutes.checkOutSummaryScreen);
                          },
                          height: getVerticalSize(48),
                          text: "lbl_next".tr,
                          margin: getMargin(left: 20, top: 16, right: 20, bottom: 24));
                    }),
                  ],
                ))));
  }

  onTapArrowleft5() {
    Get.back();
  }
}
