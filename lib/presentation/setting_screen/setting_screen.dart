import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';

import 'controller/setting_controller.dart';

class SettingScreen extends GetWidget<SettingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(height: getVerticalSize(58), leadingWidth: 44, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftBlack900, margin: getMargin(left: 20, top: 17, bottom: 17), onTap: onTapArrowleft15), title: AppbarTitle(text: "lbl_settings".tr, margin: getMargin(left: 16)), styleType: Style.bgFillWhiteA700),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 10, bottom: 10),
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.profileSettingsPage);
                    },
                    child: Container(
                        width: double.maxFinite,
                        padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                        decoration: AppDecoration.white,
                        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                          CustomImageView(svgPath: ImageConstant.imgSettingsBlack900, height: getSize(24), width: getSize(24)),
                          Padding(padding: getPadding(left: 15, top: 2, bottom: 3), child: Text("lbl_account".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black900)),
                          Spacer(),
                          CustomImageView(svgPath: ImageConstant.imgArrowright, height: getSize(24), width: getSize(24))
                        ])),
                  ),
                  GestureDetector(
                    onTap:(){

                      Get.toNamed(AppRoutes.languageSettingsPage);
                    },
                    child: Container(
                        width: double.maxFinite,
                        margin: getMargin(top: 1),
                        padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                        decoration: AppDecoration.white,
                        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                          CustomImageView(svgPath: ImageConstant.imgGlobeBlack900, height: getSize(24), width: getSize(24)),
                          Padding(padding: getPadding(left: 15, top: 4, bottom: 1), child: Text("lbl_app_launguage".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black900)),
                          Spacer(),
                          CustomImageView(svgPath: ImageConstant.imgArrowright, height: getSize(24), width: getSize(24))
                        ])),
                  ),
                  Container(
                      width: double.maxFinite,
                      margin: getMargin(top: 1),
                      padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                      decoration: AppDecoration.white,
                      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        CustomImageView(svgPath: ImageConstant.imgQuestion, height: getSize(24), width: getSize(24)),
                        Padding(padding: getPadding(left: 15, top: 3, bottom: 2), child: Text("lbl_help_support".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black900)),
                        Spacer(),
                        CustomImageView(svgPath: ImageConstant.imgArrowright, height: getSize(24), width: getSize(24))
                      ])),
                  Spacer(),
                  Padding(padding: getPadding(bottom: 4), child: SizedBox(width: getHorizontalSize(135), child: Divider(thickness: getVerticalSize(5), color: ColorConstant.black900)))
                ]))));
  }

  onTapArrowleft15() {
    Get.back();
  }
}
