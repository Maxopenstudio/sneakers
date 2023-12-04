import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';

import '../controller/home_screen_controller.dart';
import '../models/listwalkingfitness_item_model.dart';

// ignore: must_be_immutable
class ListwalkingfitnessItemWidget extends StatelessWidget {
  ListwalkingfitnessItemWidget(this.listwalkingfitnessItemModelObj);

  ListwalkingfitnessItemModel listwalkingfitnessItemModelObj;

  var controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: getHorizontalSize(
            263,
          ),
          margin: getMargin(
            right: 16,
          ),
          decoration: AppDecoration.fillGray100.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imagePath + listwalkingfitnessItemModelObj.image,
                height: getVerticalSize(
                  123,
                ),
                width: double.infinity,
                radius: BorderRadius.only(
                  topLeft: Radius.circular(
                    getHorizontalSize(
                      8,
                    ),
                  ),
                  topRight: Radius.circular(
                    getHorizontalSize(
                      8,
                    ),
                  ),
                ),
                fit: BoxFit.fill,
              ),
              Container(
                margin: getMargin(left: 16, top: 16, right: 16),
                child: Text(
                  "msg_this_classic_pair".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtHeadlineBlack900,
                ),
              ),
              Container(
                margin: getMargin(left: 16, top: 8, bottom: 16, right: 16),
                child: Text(
                  "msg_aside_from_that".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSFUITextRegular15Black9001,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
