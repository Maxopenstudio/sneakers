import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/core/utils/mask_formatter.dart';
import 'package:shoes_app/core/utils/validation_functions.dart';
import 'package:shoes_app/data/auth_controller/auth_controller.dart';
import 'package:shoes_app/widgets/custom_button.dart';
import 'package:shoes_app/widgets/custom_text_form_field.dart';

import 'controller/register_controller.dart';

class RegisterScreen extends GetWidget<RegisterController> {
  static final GlobalKey<FormState> _registrationformKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: ColorConstant.whiteA700,
        body: StreamBuilder(
            stream: controller.errors.stream,
            builder: (context, snapshot) {
              return Form(
                key: _registrationformKey,
                child: Container(
                  width: double.maxFinite,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                  Expanded(
                  child: SingleChildScrollView(
                  child: Container(
                    padding: getPadding(
                    left: 20,
                    top: 32,
                    right: 20,
                    bottom: 14,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    CustomImageView(
                    svgPath: ImageConstant.imgAirplane,
                    height: getSize(
                      80,
                    ),
                    width: getSize(
                      80,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 16,
                    ),
                    child: Text(
                      "lbl_register".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFUITextSemibold27,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 16,
                    ),
                    child: Text(
                      "msg_enter_your_details2".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtBodyGray600,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 40,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_first_name".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtBodyBlack900,
                        ),
                        CustomTextFormField(
                          controller: controller.registerFirstname,
                          hintText: "msg_enter_first_name".tr,
                          margin: getMargin(
                            top: 8,
                          ),
                          validator: (value) {
                            if (!isText(value)) {
                              return "Please enter valid text";
                            }
                            return null;
                          },
                          suffix: Container(
                            margin: getMargin(
                              left: 12,
                              top: 12,
                              right: 16,
                              bottom: 12,
                            ),
                            child: SizedBox(),
                          ),
                          suffixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                48,
                              ),
                              minHeight: getVerticalSize(
                                48,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_last_name".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtBodyBlack900,
                        ),
                        CustomTextFormField(
                          // focusNode: FocusNode(),
                          controller: controller.registerLastname,
                          hintText: "lbl_enter_last_name".tr,
                          margin: getMargin(
                            top: 8,
                          ),
                          validator: (value) {
                            if (!isText(value)) {
                              return "Please enter valid text";
                            }
                            return null;
                          },
                          suffix: Container(
                            margin: getMargin(
                              left: 12,
                              top: 12,
                              right: 16,
                              bottom: 12,
                            ),
                            child: SizedBox(),
                          ),
                          suffixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                48,
                              ),
                              minHeight: getVerticalSize(
                                48,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_email_address".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtBodyBlack900,
                        ),
                        CustomTextFormField(
                          errorText: (controller.errors?["exists"]) != null ? (controller.errors?["exists"]).first : null,
                          // focusNode: FocusNode(),
                          controller: controller.registerEmail,
                          hintText: "msg_enter_email_address".tr,
                          margin: getMargin(
                            top: 8,
                          ),
                          textInputType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || (!isValidEmail(value, isRequired: true))) {
                              return "Please enter valid email";
                            }
                            return null;
                          },
                          suffix: Container(
                            margin: getMargin(
                              left: 12,
                              top: 12,
                              right: 16,
                              bottom: 12,
                            ),
                            child: SizedBox(),
                          ),
                          suffixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                48,
                              ),
                              minHeight: getVerticalSize(
                                48,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_telephone".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtBodyBlack900,
                        ),
                        CustomTextFormField(
                          inputFormatters: [MaskFormatter.phone],
                          // focusNode: FocusNode(),
                          controller: controller.registerPhone,
                          hintText: "msg_enter_telephone".tr,
                          margin: getMargin(
                            top: 8,
                          ),
                          textInputType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || (!isValidPhone(value))) {
                              return "Please enter valid phone";
                            }
                            return null;
                          },
                          suffix: Container(
                            margin: getMargin(
                              left: 12,
                              top: 12,
                              right: 16,
                              bottom: 12,
                            ),
                            child: SizedBox(),
                          ),
                          suffixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                48,
                              ),
                              minHeight: getVerticalSize(
                                48,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_password".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtBodyBlack900,
                        ),
                        CustomTextFormField(
                          // focusNode: FocusNode(),
                          errorText: (controller.errors?["password"]) != null ? (controller.errors?["password"]).first : null,
                          controller: controller.registerPassword,
                          hintText: "lbl_enter_password".tr,
                          margin: getMargin(
                            top: 8,
                          ),
                          textInputType: TextInputType.visiblePassword,
                          validator: (value) {
                            //|| (!isValidPassword(value, isRequired: true))
                            if (value == null) {
                              return "Please enter valid password";
                            }
                            return null;
                          },
                          suffix: Container(
                            margin: getMargin(
                              left: 12,
                              top: 12,
                              right: 16,
                              bottom: 12,
                            ),
                            child: SizedBox(),
                          ),
                          suffixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                48,
                              ),
                              minHeight: getVerticalSize(
                                48,
                              )),
                          isObscureText: true,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "msg_confirm_password".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtBodyBlack900,
                        ),
                        CustomTextFormField(
                          // focusNode: FocusNode(),
                          errorText: (controller.errors?["confirm"]) != null ? (controller.errors?["confirm"]).first : null,
                          controller: controller.registerPasswordConfirm,
                          hintText: "msg_enter_confirm_password".tr,
                          margin: getMargin(
                            top: 8,
                          ),
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          validator: (value) {
                            if (value == null && controller.registerPassword.text == value) {
                              return "Please enter valid password";
                            }
                            return null;
                          },
                          suffix: Container(
                            margin: getMargin(
                              left: 12,
                              top: 12,
                              right: 16,
                              bottom: 12,
                            ),
                            child: SizedBox(),
                          ),
                          suffixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                48,
                              ),
                              minHeight: getVerticalSize(
                                48,
                              )),
                          isObscureText: true,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        top: 24,
                        // right: 48,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Container(
                        height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      child: StreamBuilder(
                          stream: controller.agreeTerms.stream,
                          builder: (context, snapshot) {
                            return Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      4,
                                    ),
                                  ),
                                  border: Border.all(
                                    color: ColorConstant.gray600,
                                    width: getHorizontalSize(
                                      1,
                                    ),
                                  )),
                              child: Checkbox(
                                value: controller.agreeTerms.value,
                                onChanged: (value) {
                                  print("value: $value");
                                  if (value == null) return;
                                  controller.agreeTerms.value = value;
                                },
                                checkColor: ColorConstant.black900,
                                fillColor: MaterialStatePropertyAll<Color>(Colors.transparent),
                                side: BorderSide.none,
                              ),
                            );
                          }),
                    ),
                    Expanded(
                      child: Container(
                        margin: getMargin(
                          left: 16,
                        ),
                        child: GestureDetector(
                          onTap: () => Get.toNamed(AppRoutes.privacyPolicyScreen),
                          child: RichText(
                          text: TextSpan(
                          children: [
                        TextSpan(
                        text: "lbl_i_agree_to_the".tr,
                          style: TextStyle(
                            color: ColorConstant.gray600,
                            fontSize: getFontSize(
                              15,
                            ),
                            fontFamily: 'SF UI Text',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: "msg_terms_condition".tr,
                          style: TextStyle(
                            color: ColorConstant.black900,
                            fontSize: getFontSize(
                              15,
                            ),
                            fontFamily: 'SF UI Text',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: "msg_set_out_by_this".tr,
                          style: TextStyle(
                            color: ColorConstant.gray600,
                            fontSize: getFontSize(
                              15,
                            ),
                            fontFamily: 'SF UI Text',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              ],
              ),
              ),
              ),
              CustomButton(
              onTap: () async {
              if (_registrationformKey.currentState!.validate()) {
              bool isSuccessful = await controller.register();
              if (isSuccessful) {
              Get.find<AuthController>().personalDataModel.value = controller.registerResult.value;
              Get.toNamed(AppRoutes.homeScreenContainerScreen);
              } else {
              //print("Register errors: ${controller.errors.value}");
              }

              /*
                                    PrefUtils.setLogin(true);
                                    Get.toNamed(AppRoutes.homeScreenContainerScreen);
                                     */
              }
              },
              height: getVerticalSize(
              48,
              ),
              text: "lbl_register".tr,
              margin: getMargin(
              top: 36,
              ),
              ),
              Padding(
              padding: getPadding(
              top: 32,
              ),
              child: RichText(
              text: TextSpan(
              children: [
              TextSpan(
              text: "msg_have_an_account".tr,
              style: TextStyle(
              color: ColorConstant.gray600,
              fontSize: getFontSize(
              17,
              ),
              fontFamily: 'SF UI Text',
              fontWeight: FontWeight.w400,
              ),
              ),
              TextSpan(
              text: " ",
              style: TextStyle(
              color: ColorConstant.gray600,
              fontSize: getFontSize(
              18,
              ),
              fontFamily: 'SF UI Text',
              fontWeight: FontWeight.w600,
              ),
              ),
              TextSpan(
              recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
              text: "lbl_login".tr,
              style: TextStyle(
              color: ColorConstant.black900,
              fontSize: getFontSize(
              18,
              ),
              fontFamily: 'SF UI Text',
              fontWeight: FontWeight.w600,
              ),
              ),
              ],
              ),
              textAlign: TextAlign.left,
              ),
              ),
              ],
              ),
              ),
              ),
              ),
              ],
              ),
              ),
              );
            }),
      ),
    );
  }
}
