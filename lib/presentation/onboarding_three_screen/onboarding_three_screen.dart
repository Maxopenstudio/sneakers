import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'controller/onboarding_three_controller.dart';

class OnboardingThreeScreen extends GetWidget<OnboardingThreeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 8,
            top: 14,
            right: 8,
            bottom: 14,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getSize(
                  411,
                ),
                width: getSize(
                  411,
                ),
                margin: getMargin(
                  top: 38,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgVector,
                      height: getVerticalSize(
                        359,
                      ),
                      width: getHorizontalSize(
                        376,
                      ),
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRunningshoes1,
                      height: getSize(
                        411,
                      ),
                      width: getSize(
                        411,
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Container(
                width: getHorizontalSize(
                  354,
                ),
                margin: getMargin(
                  left: 28,
                  top: 55,
                  right: 29,
                ),
                child: Text(
                  "msg_get_your_next_a".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtSFUITextSemibold27,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  351,
                ),
                margin: getMargin(
                  left: 29,
                  top: 16,
                  right: 30,
                ),
                child: Text(
                  "msg_amet_minim_mollit".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtBody,
                ),
              ),
              Container(
                height: getVerticalSize(
                  8,
                ),
                margin: getMargin(
                  top: 53,
                ),
                child: SmoothIndicator(
                  offset: 0,
                  count: 3,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                    spacing: 10,
                    activeDotColor: ColorConstant.black900,
                    dotColor: ColorConstant.gray300,
                    dotHeight: getVerticalSize(
                      8,
                    ),
                    dotWidth: getHorizontalSize(
                      8,
                    ),
                  ),
                ),
              ),
              CustomButton(
                onTap: () {
                  Get.toNamed(AppRoutes.loginScreen);
                },
                height: getVerticalSize(
                  48,
                ),
                text: "lbl_get_started".tr,
                margin: getMargin(
                  left: 12,
                  top: 59,
                  right: 12,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 47,
                ),
                child: SizedBox(
                  width: getHorizontalSize(
                    135,
                  ),
                  child: Divider(
                    thickness: getVerticalSize(
                      5,
                    ),
                    color: ColorConstant.black900,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
