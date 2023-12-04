import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/custom_button.dart';

import 'controller/payment_done_controller.dart';

// ignore_for_file: must_be_immutable
class PaymentDoneDialog extends StatelessWidget {
  PaymentDoneDialog(this.controller);

  PaymentDoneController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        388,
      ),
      padding: getPadding(
        left: 74,
        top: 24,
        right: 74,
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
              "msg_payment_done_successfully".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtSFUITextSemibold18Black900,
            ),
          ),
          Container(
            margin: getMargin(
              top: 14,
            ),
            child: Text(
              "msg_thank_you_for_shoping".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtBody,
            ),
          ),
          CustomButton(
            onTap: () {
              Get.toNamed(AppRoutes.homeScreenContainerScreen);
            },
            height: getVerticalSize(
              48,
            ),
            text: "lbl_back_to_home".tr,
            margin: getMargin(
              top: 32,
            ),
          ),
        ],
      ),
    );
  }
}
