import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/filter_bottomsheet/controller/filter_controller.dart';
import 'package:shoes_app/presentation/filter_bottomsheet/filter_bottomsheet.dart';
import 'package:shoes_app/presentation/password_changed_dialog/password_changed_dialog.dart';
import 'package:shoes_app/presentation/payment_done_dialog/controller/payment_done_controller.dart';
import 'package:shoes_app/presentation/payment_done_dialog/payment_done_dialog.dart';
import 'package:shoes_app/presentation/write_review_dialog/controller/write_review_controller.dart';
import 'package:shoes_app/presentation/write_review_dialog/write_review_dialog.dart';

import 'controller/app_navigation_controller.dart';

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: getHorizontalSize(375),
                child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                      decoration: AppDecoration.white,
                      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                        Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_app_navigation".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                        Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20), child: Text("msg_check_your_app_s".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular16))),
                        Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.black900))
                      ])),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              decoration: AppDecoration.white,
                              child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapSplacescreenOne();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_splace_screen_one".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapSplacescreenTwo();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_splace_screen_two".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapOnboardingOne();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_onboarding_one".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapOnboardingTwo();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_onboarding_two".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapOnboardingThree();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_onboarding_three".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapLoginScreen();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_login_screen".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapRegister();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_register".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapRegistererror();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_register_error".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapRegistererrorOne();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_register_error_one".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapRegisterFilled();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_register_filled".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapForgotPassword();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_forgot_password".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapVarificationCode();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_varification_code".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapEnterNewPassword();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_enter_new_password".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapPasswordChanged();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_password_changed2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapHomescreenContainer();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_home_screen_container".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapSearch();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_search".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapBestsellingProduct();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_best_selling_product2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapFilter();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_filter".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapProductDetail();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_product_detail".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapCart();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_cart".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapSelectAddress();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_select_address".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapCheckOutOne();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_check_out_one".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapCheckoutTwo();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_check_out_two".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapPaymentdone();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_payment_done".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapCheckOutThree();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_check_out_three".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapBlogDetail();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_blog_detail".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapCategories();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_categories".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapCoupon();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_coupon".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapOrderDetailsOne();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_order_details_one".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapWriteReview();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_write_review".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapOrderDetailsTwo();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_order_details_two".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapSetting();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_setting".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapPrivacyPolicy();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.white,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                          Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_privacy_policy".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))),
                                          Padding(padding: getPadding(top: 5), child: Divider(thickness: getVerticalSize(1), color: ColorConstant.bluegray400))
                                        ])))
                              ]))))
                ]))));
  }

  onTapSplacescreenOne() {
    Get.toNamed(AppRoutes.splaceScreenOneScreen);
  }

  onTapSplacescreenTwo() {
    Get.toNamed(AppRoutes.splaceScreenTwoScreen);
  }

  onTapOnboardingOne() {
    Get.toNamed(AppRoutes.onboardingOneScreen);
  }

  onTapOnboardingTwo() {
    Get.toNamed(AppRoutes.onboardingTwoScreen);
  }

  onTapOnboardingThree() {
    Get.toNamed(AppRoutes.onboardingThreeScreen);
  }

  onTapLoginScreen() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  onTapRegister() {
    Get.toNamed(AppRoutes.registerScreen);
  }

  onTapRegistererror() {
    Get.toNamed(AppRoutes.registerErrorScreen);
  }

  onTapRegistererrorOne() {
    Get.toNamed(AppRoutes.registerErrorOneScreen);
  }

  onTapRegisterFilled() {
    Get.toNamed(AppRoutes.registerFilledScreen);
  }

  onTapForgotPassword() {
    Get.toNamed(AppRoutes.forgotPasswordScreen);
  }

  onTapVarificationCode() {
    Get.toNamed(AppRoutes.varificationCodeScreen);
  }

  onTapEnterNewPassword() {
    Get.toNamed(AppRoutes.enterNewPasswordScreen);
  }

  onTapPasswordChanged() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.only(left: 0),
      content: PasswordChangedDialog(),
    ));
  }

  onTapHomescreenContainer() {
    Get.toNamed(AppRoutes.homeScreenContainerScreen);
  }

  onTapSearch() {
    Get.toNamed(AppRoutes.searchScreen);
  }

  onTapBestsellingProduct() {
    Get.toNamed(AppRoutes.bestSellingProductScreen);
  }

  onTapFilter() {
    Get.bottomSheet(
      FilterBottomsheet(
        Get.put(
          FilterController(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  onTapProductDetail() {
    Get.toNamed(AppRoutes.productDetailScreen);
  }

  onTapCart() {
    Get.toNamed(AppRoutes.cartScreen);
  }

  onTapSelectAddress() {
    Get.toNamed(AppRoutes.selectAddressScreen);
  }

  onTapCheckOutOne() {
    Get.toNamed(AppRoutes.checkOutOneScreen);
  }

  onTapCheckoutTwo() {
    Get.toNamed(AppRoutes.checkOutTwoScreen);
  }

  onTapPaymentdone() {
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
  }

  onTapCheckOutThree() {
    Get.toNamed(AppRoutes.checkOutThreeScreen);
  }

  onTapBlogDetail() {
    Get.toNamed(AppRoutes.blogDetailScreen);
  }

  onTapCategories() {
    Get.toNamed(AppRoutes.categoriesScreen);
  }

  onTapCoupon() {
    Get.toNamed(AppRoutes.couponScreen);
  }

  onTapOrderDetailsOne() {
    Get.toNamed(AppRoutes.orderDetailsOneScreen);
  }

  onTapWriteReview() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.only(left: 0),
      content: WriteReviewDialog(
        Get.put(
          WriteReviewController(),
        ),
      ),
    ));
  }

  onTapOrderDetailsTwo() {
    Get.toNamed(AppRoutes.orderDetailsTwoScreen);
  }

  onTapSetting() {
    Get.toNamed(AppRoutes.settingScreen);
  }

  onTapPrivacyPolicy() {
    Get.toNamed(AppRoutes.privacyPolicyScreen);
  }
  onTapTermsCondition() {
    Get.toNamed(AppRoutes.termsConditionScreen);
  }
}
