import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'controller/onboarding_two_controller.dart';

class OnboardingTwoScreen extends GetWidget<OnboardingTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 17,
            top: 14,
            right: 17,
            bottom: 14,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: getPadding(
                    top: 4,
                  ),
                  child: Text(
                    "lbl_skip".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFUITextSemibold14,
                  ),
                ),
              ),
              Container(
                margin: getMargin(
                  left: 9,
                  top: 45,
                  right: 9,
                ),
                padding: getPadding(
                  left: 15,
                  right: 15,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: fs.Svg(
                      ImageConstant.imgGroup34,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMaleflyingwit,
                      height: getSize(
                        346,
                      ),
                      width: getSize(
                        346,
                      ),
                      margin: getMargin(
                        bottom: 13,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: getHorizontalSize(
                  346,
                ),
                margin: getMargin(
                  left: 24,
                  top: 78,
                  right: 23,
                ),
                child: Text(
                  "msg_best_collection".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtSFUITextSemibold27,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  373,
                ),
                margin: getMargin(
                  left: 10,
                  top: 11,
                  right: 10,
                ),
                child: Text(
                  "msg_never_miss_a_drop".tr,
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
                  Get.toNamed(AppRoutes.onboardingThreeScreen);
                },
                height: getVerticalSize(
                  48,
                ),
                text: "lbl_next".tr,
                margin: getMargin(
                  left: 3,
                  top: 59,
                  right: 3,
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
