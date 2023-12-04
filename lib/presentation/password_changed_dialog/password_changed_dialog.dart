import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class PasswordChangedDialog extends StatelessWidget {
  // PasswordChangedDialog();
  //
  // PasswordChangedController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        388,
      ),
      padding: getPadding(
        left: 13,
        top: 24,
        right: 13,
        bottom: 24,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder36,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgCheckmark,
            height: getSize(
              100,
            ),
            width: getSize(
              100,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 16,
            ),
            child: Text(
              "msg_password_changed".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtSFUITextSemibold18Black900,
            ),
          ),
          Container(
            margin: getMargin(
              top: 16,
            ),
            child: Text(
              "msg_your_password_has".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtBody,
            ),
          ),
          CustomButton(
            onTap: () {
              Get.toNamed(AppRoutes.loginScreen);
            },
            height: getVerticalSize(
              48,
            ),
            width: getHorizontalSize(
              240,
            ),
            text: "lbl_ok".tr,
            margin: getMargin(
              top: 32,
            ),
          ),
        ],
      ),
    );
  }
}
