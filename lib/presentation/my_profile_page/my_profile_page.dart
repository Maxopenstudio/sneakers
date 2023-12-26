import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/data/auth_controller/auth_controller.dart';
import 'package:shoes_app/presentation/login_screen/controller/login_controller.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';

import '../home_screen_container_screen/controller/home_screen_container_controller.dart';
import 'controller/my_profile_controller.dart';
import 'models/my_profile_model.dart';

// ignore_for_file: must_be_immutable
class MyProfilePage extends GetWidget<AuthController> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(58),
                leadingWidth: 44,
                leading: GetBuilder<HomeScreenContainerController>(
                  init: HomeScreenContainerController(),
                  builder: (controller) => AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgArrowleftBlack900,
                      margin: getMargin(left: 20, top: 17, bottom: 17),
                      onTap: () {
                        controller.change(0);
                      }),
                ),
                title: AppbarTitle(text: "lbl_my_profile".tr, margin: getMargin(left: 16)),
                styleType: Style.bgFillWhiteA700),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding: getPadding(top: 10, bottom: 10),
                  child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Container(
                        width: double.maxFinite,
                        child: Container(
                            padding: getPadding(left: 133, top: 16, right: 133, bottom: 16),
                            decoration: AppDecoration.white,
                            child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                              Padding(padding: getPadding(top: 8), child: Text(controller.personalDataModel.value!.firstname + " " + controller.personalDataModel.value!.lastname, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)),
                              Padding(padding: getPadding(top: 6), child: Text(controller.personalDataModel.value!.email, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Gray600))
                            ]))),
                    Container(width: double.maxFinite, margin: getMargin(top: 10), padding: getPadding(left: 20, top: 16, right: 20, bottom: 16), decoration: AppDecoration.txtFillWhiteA700, child: Text("lbl_general".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline)),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.settingScreen);
                      },
                      child: Container(
                          width: double.maxFinite,
                          margin: getMargin(top: 1),
                          padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                          decoration: AppDecoration.white,
                          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                            CustomImageView(svgPath: ImageConstant.imgSettingsBlack900, height: getSize(24), width: getSize(24)),
                            Padding(padding: getPadding(left: 15, top: 3, bottom: 2), child: Text("lbl_settings".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black900)),
                            Spacer(),
                            CustomImageView(svgPath: ImageConstant.imgArrowright, height: getSize(24), width: getSize(24))
                          ])),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.checkOutThreeScreen);
                      },
                      child: Container(
                          width: double.maxFinite,
                          margin: getMargin(top: 1),
                          padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                          decoration: AppDecoration.white,
                          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                            CustomImageView(svgPath: ImageConstant.imgClockBlack900, height: getSize(24), width: getSize(24)),
                            Padding(padding: getPadding(left: 15, top: 3, bottom: 2), child: Text("lbl_order_history".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black900)),
                            Spacer(),
                            CustomImageView(svgPath: ImageConstant.imgArrowright, height: getSize(24), width: getSize(24))
                          ])),
                    ),
                    Container(width: double.maxFinite, margin: getMargin(top: 16), padding: getPadding(left: 20, top: 16, right: 20, bottom: 16), decoration: AppDecoration.txtFillWhiteA700, child: Text("lbl_general".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline)),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.privacyPolicyScreen);
                      },
                      child: Container(
                          width: double.maxFinite,
                          margin: getMargin(top: 1),
                          padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                          decoration: AppDecoration.white,
                          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                            CustomImageView(svgPath: ImageConstant.imgLockBlack90024x24, height: getSize(24), width: getSize(24)),
                            Padding(padding: getPadding(left: 15, top: 3, bottom: 2), child: Text("lbl_privacy_policy".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black900)),
                            Spacer(),
                            CustomImageView(svgPath: ImageConstant.imgArrowright, height: getSize(24), width: getSize(24))
                          ])),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.termsConditionScreen);
                      },
                      child: Container(
                          width: double.maxFinite,
                          margin: getMargin(top: 1, bottom: 5),
                          padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                          decoration: AppDecoration.white,
                          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                            CustomImageView(svgPath: ImageConstant.imgWarningBlack900, height: getSize(24), width: getSize(24)),
                            Padding(padding: getPadding(left: 15, top: 2, bottom: 3), child: Text("msg_terms_condition2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black900)),
                            Spacer(),
                            CustomImageView(svgPath: ImageConstant.imgArrowright, height: getSize(24), width: getSize(24))
                          ])),
                    ),
                    GestureDetector(
                      onTap: () async {
                        final bool result = await controller.logout();
                        if (result) {
                          Get.delete<LoginController>();
                          Get.offAndToNamed(AppRoutes.loginScreen);
                        }
                      },
                      child: Container(
                          width: double.maxFinite,
                          margin: getMargin(top: 17, bottom: 5),
                          padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                          decoration: AppDecoration.white,
                          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                            CustomImageView(svgPath: ImageConstant.logout, height: getSize(24), width: getSize(24)),
                            Padding(padding: getPadding(left: 15, top: 2, bottom: 3), child: Text("lbl_logout".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black900)),
                          ])),
                    ),
                    Container(
                        width: double.maxFinite,
                        margin: getMargin(top: 17, bottom: 5),
                        padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                        decoration: AppDecoration.white,
                        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                          CustomImageView(svgPath: ImageConstant.deleteAccount, height: getSize(24), width: getSize(24)),
                          Padding(padding: getPadding(left: 15, top: 2, bottom: 3), child: Text("lbl_disable_account".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black900)),
                        ]))

                  ])),
            )));
  }

  onTapArrowleft14() {
    if (Platform.isIOS) {
      exit(0);
    } else {
      SystemNavigator.pop();
    }
  }
}
