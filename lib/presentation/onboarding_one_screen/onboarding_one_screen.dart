import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/onboarding_one_screen/models/onboarding_one_model.dart';
import 'package:shoes_app/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'controller/onboarding_one_controller.dart';

// ignore: must_be_immutable
class OnboardingOneScreen extends GetWidget<OnboardingOneController> {
  PageController pageController = PageController(initialPage: 0);
  OnboardingOneController onboardingOneController = Get.put(OnboardingOneController());

  Future<bool> _requestPop() {
    if (Platform.isIOS) {
      exit(0);
    } else {
      SystemNavigator.pop();
    }
    return new Future.value(false);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _requestPop,
      child: SafeArea(
        child: GetBuilder<OnboardingOneController>(
          init: OnboardingOneController(),
          builder: (controller) => Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(
              children: [
                SizedBox(height: getVerticalSize(16)),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: getPadding(right: 20),
                    child: GestureDetector(
                      onTap: () {
                        PrefUtils.setIsIntro(false);
                        Get.toNamed(AppRoutes.loginScreen);
                      },
                      child: Text(
                        "lbl_skip".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
                        style: AppStyle.txtSFUITextSemibold14,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: controller.onboardingList.length,
                    onPageChanged: (index) {
                      _onPageViewChange(index);
                    },
                    itemBuilder: (context, index) {
                      OnboardingOneModel model = controller.onboardingList[index];
                      return Column(
                        children: [
                          Expanded(
                            flex: 9,
                            child: CustomImageView(
                              height: getVerticalSize(
                                367,
                              ),
                              width: getHorizontalSize(
                                375,
                              ),
                              margin: getMargin(
                                top: 81,
                              ),
                              imagePath: ImageConstant.imagePath + model.image,
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(height: getVerticalSize(71)),
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: getPadding(left: 43, right: 43),
                              child: Text(
                                model.name,
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtSFUITextSemibold27,
                              ),
                            ),
                          ),
                          SizedBox(height: getVerticalSize(16)),
                          Expanded(
                            flex: 2,
                            child: Container(
                              margin: getMargin(
                                left: 24,
                                right: 24,
                              ),
                              child: Text(
                                model.description,
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtBody,
                              ),
                            ),
                          ),
                          // SizedBox(height: getVerticalSize(56)),
                        ],
                      );
                    },
                  ),
                ),
                SmoothPageIndicator(
                  controller: pageController,
                  count: controller.onboardingList.length,
                  effect: CustomizableEffect(
                    activeDotDecoration: DotDecoration(
                      width: getHorizontalSize(32),
                      height: getVerticalSize(8),
                      color: ColorConstant.black900,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    dotDecoration: DotDecoration(
                      width: getVerticalSize(8),
                      height: getVerticalSize(8),
                      color: ColorConstant.gray300,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                SizedBox(height: getVerticalSize(59)),
                CustomButton(
                  onTap: () {
                    if (controller.position.value == controller.onboardingList.length - 1) {
                      PrefUtils.setIsIntro(false);
                      Get.toNamed(AppRoutes.loginScreen);
                    }
                    pageController.jumpToPage(controller.position.value + 1);
                  },
                  height: getVerticalSize(
                    48,
                  ),
                  text: controller.position.value == controller.onboardingList.length - 1 ? "lbl_get_started".tr : "lbl_next".tr,
                  margin: getMargin(left: 20, right: 20, bottom: 32),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _onPageViewChange(int page) {
    onboardingOneController.onChange(page.obs);
  }
}
