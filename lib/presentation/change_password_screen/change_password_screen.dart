import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/core/utils/mask_formatter.dart';
import 'package:shoes_app/core/utils/validation_functions.dart';
import 'package:shoes_app/presentation/change_password_screen/controller/change_password_controller.dart';
import 'package:shoes_app/presentation/profile_settings_page/controller/profile_settings_controller.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';
import 'package:shoes_app/widgets/custom_button.dart';
import 'package:shoes_app/widgets/custom_text_form_field.dart';

import '../home_screen_container_screen/controller/home_screen_container_controller.dart';

// ignore_for_file: must_be_immutable
class ChangePasswordScreen extends GetWidget<ChangePasswordController> {
  static final GlobalKey<FormState> _changePasswordFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        resizeToAvoidBottomInset: true,
        appBar: CustomAppBar(
            height: getVerticalSize(58),
            leadingWidth: 44,
            leading: GetBuilder<HomeScreenContainerController>(
              init: HomeScreenContainerController(),
              builder: (controller) => AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftBlack900, margin: getMargin(left: 20, top: 17, bottom: 17), onTap: onTapArrowleft14),
            ),
            title: AppbarTitle(text: "lbl_change_password".tr, margin: getMargin(left: 16)),
            styleType: Style.bgFillWhiteA700),
        body: Container(
            width: double.maxFinite,
            padding: getPadding(top: 10, bottom: 10),
            child: Form(
              key: _changePasswordFormKey,
              child: SingleChildScrollView(
                child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    color: ColorConstant.whiteA700,
                    padding:getPadding(
                      left: 20,
                      top: 32,
                      right: 20,
                      bottom: 14,
                    ),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_new_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtBodyBlack900,
                            ),
                            CustomTextFormField(
                              // focusNode: FocusNode(),
                              controller: controller.profilePassword,
                              hintText: "msg_enter_new_password".tr,
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
                                controller: controller.profilePasswordConfirm,
                                hintText: "msg_enter_confirm_password".tr,
                                margin: getMargin(
                                  top: 8,
                                ),
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                validator: (value) {
                                  if (value == null && controller.profilePassword.text == value) {
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
                      ],
                    ),
                  ),
                  Container(
                    padding: getPadding(
                      left: 20,
                      right: 20,
                      bottom: 14,
                    ),
                    color: ColorConstant.whiteA700,
                    child: CustomButton(
                      onTap: () async {
                        if (_changePasswordFormKey.currentState!.validate()) {
                          /*
                          bool isSuccessful = await controller.register();
                          if (isSuccessful) {
                            Get.find<AuthController>().personalDataModel.value = controller.registerResult.value;
                            Get.toNamed(AppRoutes.homeScreenContainerScreen);
                          } else {
                            print("Register errors: ${controller.registerResult.value}");
                          }

                          /*
                                PrefUtils.setLogin(true);
                                Get.toNamed(AppRoutes.homeScreenContainerScreen);
                                 */
                           */
                        }
                      },
                      height: getVerticalSize(
                        48,
                      ),
                      text: "lbl_change_password".tr,
                      margin: getMargin(
                        top: 36,
                      ),
                    ),
                  ),

                ]),
              ),
            )),
      ),
    );
  }

  onTapArrowleft14() {
    Get.back();
  }
}
