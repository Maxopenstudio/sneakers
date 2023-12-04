import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/core/utils/validation_functions.dart';
import 'package:shoes_app/presentation/password_changed_dialog/password_changed_dialog.dart';
import 'package:shoes_app/widgets/custom_button.dart';
import 'package:shoes_app/widgets/custom_text_form_field.dart';

import 'controller/enter_new_password_controller.dart';

// ignore_for_file: must_be_immutable
class EnterNewPasswordScreen extends GetWidget<EnterNewPasswordController> {
  static final GlobalKey<FormState> _enterformKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Form(
                key: _enterformKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 20, top: 16, right: 20),
                    child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Stack(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowleft,
                                height: getSize(24),
                                width: getSize(24),
                                onTap: () {
                                  onTapImgArrowleft();
                                }),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: getPadding(top: 16),
                                child: CustomImageView(svgPath: ImageConstant.imgAirplane, height: getSize(80), width: getSize(80)),
                              ),
                            )
                          ])),
                      Padding(padding: getPadding(top: 16), child: Text("msg_enter_new_password".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextSemibold27)),
                      Padding(padding: getPadding(top: 16), child: Text("msg_please_enter_your6".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyGray600)),
                      Padding(
                          padding: getPadding(top: 40),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                            Text("lbl_password".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900),
                            Obx(() => CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: controller.groupThirtyTwoController,
                                hintText: "lbl_enter_password".tr,
                                margin: getMargin(top: 8),
                                padding: TextFormFieldPadding.PaddingT13_1,
                                textInputType: TextInputType.visiblePassword,
                                suffix: GestureDetector(
                                    onTap: () {
                                      controller.isShowPassword.value = !controller.isShowPassword.value;
                                    },
                                    child: Container(margin: getMargin(left: 12, top: 12, right: 16, bottom: 12), child: CustomImageView(svgPath: controller.isShowPassword.value ? ImageConstant.imgEye : ImageConstant.imgEye))),
                                suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(48)),
                                validator: (value) {
                                  if (value == null || (!isValidPassword(value, isRequired: true))) {
                                    return "Please enter valid password";
                                  }
                                  return null;
                                },
                                isObscureText: !controller.isShowPassword.value))
                          ])),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                            Text("msg_confirm_password".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900),
                            Obx(() => CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: controller.groupThirtyThreeController,
                                hintText: "msg_enter_confirm_password".tr,
                                margin: getMargin(top: 8),
                                padding: TextFormFieldPadding.PaddingT13_1,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                suffix: GestureDetector(
                                    onTap: () {
                                      controller.isShowPassword1.value = !controller.isShowPassword1.value;
                                    },
                                    child: Container(margin: getMargin(left: 12, top: 12, right: 16, bottom: 12), child: CustomImageView(svgPath: controller.isShowPassword1.value ? ImageConstant.imgEye : ImageConstant.imgEye))),
                                suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(48)),
                                validator: (value) {
                                  if (value == null || (!isValidPassword(value, isRequired: true))) {
                                    return "Please enter valid password";
                                  }
                                  return null;
                                },
                                isObscureText: !controller.isShowPassword1.value))
                          ])),
                      CustomButton(
                          onTap: () {
                            if (_enterformKey.currentState!.validate()) {
                              Get.dialog(AlertDialog(
                                backgroundColor: Colors.transparent,
                                contentPadding: EdgeInsets.zero,
                                insetPadding: EdgeInsets.only(left: 0),
                                content: PasswordChangedDialog(),
                              ));
                            }
                          },
                          height: getVerticalSize(48),
                          text: "lbl_continue".tr,
                          margin: getMargin(top: 32)),
                    ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
