import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';

import 'controller/splace_screen_two_controller.dart';

class SplaceScreenTwoScreen extends GetWidget<SplaceScreenTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 14,
            bottom: 14,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgArt1,
                height: getSize(
                  80,
                ),
                width: getSize(
                  80,
                ),
                margin: getMargin(
                  top: 339,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 8,
                ),
                child: Text(
                  "lbl_oniaex".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtBerkshireSwashRegular37WhiteA700,
                ),
              ),
              Spacer(),
              SizedBox(
                width: getHorizontalSize(
                  135,
                ),
                child: Divider(
                  thickness: getVerticalSize(
                    5,
                  ),
                  color: ColorConstant.whiteA700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
