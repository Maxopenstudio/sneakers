import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/custom_icon_button.dart';

import '../controller/best_selling_product_controller.dart';
import '../models/listcampus_item_model.dart';

// ignore: must_be_immutable
class ListcampusItemWidget extends StatelessWidget {
  ListcampusItemWidget(this.listcampusItemModelObj);

  ListcampusItemModel listcampusItemModelObj;

  var controller = Get.find<BestSellingProductController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: getVerticalSize(
              245,
            ),
            width: getHorizontalSize(
              186,
            ),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: getHorizontalSize(
                      186,
                    ),
                    margin: getMargin(
                      bottom: 49,
                    ),
                    padding: getPadding(
                      left: 16,
                      top: 9,
                      right: 16,
                      bottom: 9,
                    ),
                    decoration: AppDecoration.fillGray100.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 133,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_campus".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtHeadline,
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 3,
                                ),
                                child: Text(
                                  "lbl_10_00".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSFUITextRegular15Black900,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomIconButton(
                          height: 24,
                          width: 24,
                          margin: getMargin(
                            top: 16,
                            bottom: 136,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgFavorite,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgRectangle77,
                  height: getSize(
                    131,
                  ),
                  width: getSize(
                    131,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      20,
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                  margin: getMargin(
                    left: 16,
                    bottom: 48,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPngegg1,
                  height: getVerticalSize(
                    167,
                  ),
                  width: getHorizontalSize(
                    163,
                  ),
                  alignment: Alignment.bottomCenter,
                ),
              ],
            ),
          ),
          Container(
            height: getVerticalSize(
              245,
            ),
            width: getHorizontalSize(
              186,
            ),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: getHorizontalSize(
                      186,
                    ),
                    margin: getMargin(
                      bottom: 49,
                    ),
                    decoration: AppDecoration.fillGray100.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 16,
                            top: 8,
                            bottom: 143,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_centrino".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtHeadline,
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 5,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "lbl_32_00".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSFUITextRegular15Gray600,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 6,
                                      ),
                                      child: Text(
                                        "lbl_28_00".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFUITextRegular15Black900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            bottom: 146,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  40,
                                ),
                                padding: getPadding(
                                  left: 4,
                                  top: 2,
                                  right: 4,
                                  bottom: 2,
                                ),
                                decoration: AppDecoration.txtFillBlack900.copyWith(
                                  borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                                ),
                                child: Text(
                                  "lbl_20_off".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSFUITextRegular9,
                                ),
                              ),
                              CustomIconButton(
                                height: 24,
                                width: 24,
                                margin: getMargin(
                                  top: 10,
                                ),
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgFavorite,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgRectangle77,
                  height: getSize(
                    131,
                  ),
                  width: getSize(
                    131,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      20,
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                  margin: getMargin(
                    left: 16,
                    bottom: 48,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPngegg1167x163,
                  height: getVerticalSize(
                    167,
                  ),
                  width: getHorizontalSize(
                    163,
                  ),
                  alignment: Alignment.bottomCenter,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
