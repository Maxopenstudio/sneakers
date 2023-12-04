import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/custom_text_form_field.dart';

import 'controller/write_review_controller.dart';

// ignore_for_file: must_be_immutable
class WriteReviewDialog extends StatelessWidget {
  WriteReviewDialog(this.controller);

  WriteReviewController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        388,
      ),
      padding: getPadding(
        left: 16,
        top: 24,
        right: 16,
        bottom: 24,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder36,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_rate_and_review".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtHeadline,
          ),
          Padding(
            padding: getPadding(
              top: 24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgStarAmber600,
                  height: getSize(
                    32,
                  ),
                  width: getSize(
                    32,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgStarAmber600,
                  height: getSize(
                    32,
                  ),
                  width: getSize(
                    32,
                  ),
                  margin: getMargin(
                    left: 8,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgStarAmber600,
                  height: getSize(
                    32,
                  ),
                  width: getSize(
                    32,
                  ),
                  margin: getMargin(
                    left: 8,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgStarAmber600,
                  height: getSize(
                    32,
                  ),
                  width: getSize(
                    32,
                  ),
                  margin: getMargin(
                    left: 8,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgVuesaxlinearstar,
                  height: getSize(
                    32,
                  ),
                  width: getSize(
                    32,
                  ),
                  margin: getMargin(
                    left: 8,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: getPadding(
                top: 16,
              ),
              child: Text(
                "lbl_review".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtSubheadBlack900,
              ),
            ),
          ),
          CustomTextFormField(
            focusNode: FocusNode(),
            controller: controller.group101Controller,
            hintText: "msg_ente_your_review".tr,
            margin: getMargin(
              top: 9,
            ),
            variant: TextFormFieldVariant.FillGray100,
            padding: TextFormFieldPadding.PaddingT9,
            fontStyle: TextFormFieldFontStyle.SFUITextRegular15,
            textInputAction: TextInputAction.done,
            maxLines: 6,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: getPadding(
                top: 16,
                bottom: 1,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "lbl_cancel".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFUITextRegular15Gray600,
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                    ),
                    child: Text(
                      "lbl_submit".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFUITextRegular15Black900,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
