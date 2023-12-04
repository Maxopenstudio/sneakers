import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/custom_button.dart';

import 'controller/varification_code_controller.dart';

class VarificationCodeScreen extends GetWidget<VarificationCodeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 16, right: 20, bottom: 14),
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
                  Padding(padding: getPadding(top: 16), child: Text("msg_enter_varification".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextSemibold27)),
                  Container(width: getHorizontalSize(338), margin: getMargin(top: 16), child: Text("msg_we_have_sent_the".tr, maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtBody)),
                  Padding(
                      padding: getPadding(left: 26, top: 40, right: 26),
                      child: Obx(() => PinCodeTextField(
                          appContext: context,
                          controller: controller.otpController.value,
                          length: 5,
                          obscureText: false,
                          obscuringCharacter: '*',
                          keyboardType: TextInputType.number,
                          autoDismissKeyboard: true,
                          enableActiveFill: true,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                          onChanged: (value) {},
                          pinTheme: PinTheme(
                              fieldHeight: getHorizontalSize(48),
                              fieldWidth: getHorizontalSize(48),
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(getHorizontalSize(8)),
                              selectedFillColor: ColorConstant.blueGray50,
                              activeFillColor: ColorConstant.blueGray50,
                              inactiveFillColor: ColorConstant.blueGray50,
                              inactiveColor: ColorConstant.blueGray50,
                              selectedColor: ColorConstant.blueGray50,
                              activeColor: ColorConstant.blueGray50)))),
                  CustomButton(
                      onTap: () {
                        Get.toNamed(AppRoutes.enterNewPasswordScreen);
                      },
                      height: getVerticalSize(48),
                      text: "lbl_continue".tr,
                      margin: getMargin(top: 32)),
                ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
