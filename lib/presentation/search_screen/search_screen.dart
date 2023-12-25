import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/search_screen/widgets/popular_list.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';
import 'package:shoes_app/widgets/custom_text_form_field.dart';

import '../search_screen/widgets/search_item_widget.dart';
import 'controller/search_controller.dart';
import 'models/search_item/search_item_model.dart';

class SearchScreen extends GetWidget<SearchProductController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray100,
        body: Container(
          width: double.maxFinite,
          child: Obx(() {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.maxFinite,
                  child: Container(
                    padding: getPadding(top: 16, bottom: 16),
                    decoration: AppDecoration.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomAppBar(
                            height: getVerticalSize(66),
                            leadingWidth: 44,
                            leading: AppbarImage(
                                height: getSize(24),
                                width: getSize(24),
                                svgPath: ImageConstant.imgArrowleftBlack900,
                                margin:
                                    getMargin(left: 20, top: 17, bottom: 25),
                                onTap: onTapArrowLeft),
                            title: AppbarTitle(
                                text: "lbl_serach".tr,
                                margin:
                                    getMargin(left: 16, bottom: 24, top: 16))),
                        Padding(
                          padding: getPadding(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                  child: CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller:
                                          controller.groupFiftySixController,
                                      hintText: "msg_search_for_shoes".tr,
                                      variant: TextFormFieldVariant.White,
                                      padding:
                                          TextFormFieldPadding.PaddingT13_2,
                                      textInputAction: TextInputAction.done,
                                      prefix: Container(
                                          margin: getMargin(
                                              left: 16,
                                              top: 12,
                                              right: 16,
                                              bottom: 12),
                                          child: CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgContrast)),
                                      prefixConstraints: BoxConstraints(
                                          maxHeight: getVerticalSize(48)))),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    controller.clear();
                                  },
                                  child: Text("lbl_cancel".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtSFUITextRegular15Red500),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  child: Container(
                    margin: getMargin(top: 10),
                    padding:
                        getPadding(left: 20, top: 16, right: 20, bottom: 16),
                    decoration: AppDecoration.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: getPadding(top: 1),
                            child: Text("lbl_recently_search".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtHeadline)),
                        Padding(
                          padding: getPadding(top: 15),
                          child: ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return SizedBox(height: getVerticalSize(16));
                            },
                            itemCount: min(controller.searchItemList.length, 5),
                            itemBuilder: (context, index) {
                              return SearchItemWidget(
                                  controller.searchItemList[index]);
                            },
                          ),
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: getPadding(top: 24),
                                child: GestureDetector(
                                  onTap: () =>
                                      controller.removeAllSearchItemModel(),
                                  child: Text("lbl_clear_all".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtBodyBlack900),
                                )))
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Obx(() {
                    if (controller.searchResults.isEmpty) {
                     return Container();
                    } else {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: controller.searchResults.length,
                        itemBuilder: (BuildContext context, int index) {
                          return SearchResultItem(
                              product: controller.searchResults[index]);
                        },
                      );
                    }
                  }),
                ),
                Padding(
                  padding: getPadding(bottom: 14),
                  child: SizedBox(
                    width: getHorizontalSize(135),
                    child: Divider(
                        thickness: getVerticalSize(5),
                        color: ColorConstant.black900),
                  ),
                )
              ],
            );
          }),
        ),
      ),
    );
  }

  onTapArrowLeft() {
    Get.back();
  }
}
