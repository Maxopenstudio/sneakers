import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/check_out_summary_screen/controller/check_out_summary_controller.dart';

import '../models/checkouttwo_item_model.dart';

// ignore: must_be_immutable
class CheckouttwoItemWidget extends StatelessWidget {
  CheckouttwoItemWidget(this.checkouttwoItemModelObj);

  CheckouttwoItemModel checkouttwoItemModelObj;

  var controller = Get.find<CheckOutSummaryController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: ColorConstant.gray100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Container(
            height: getSize(
              90,
            ),
            width: getSize(
              90,
            ),
            padding: getPadding(
              left: 5,
              top: 4,
              right: 5,
              bottom: 4,
            ),
            decoration: AppDecoration.fillGray100.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imagePath + checkouttwoItemModelObj.image,
              height: getVerticalSize(
                82,
              ),
              width: getHorizontalSize(
                80,
              ),
              alignment: Alignment.center,
            ),
          ),
        ),
        Container(
          margin: getMargin(
            left: 16,
            top: 4,
            bottom: 3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                checkouttwoItemModelObj.name,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtHeadline,
              ),
              Padding(
                padding: getPadding(
                  top: 9,
                ),
                child: Text(
                  checkouttwoItemModelObj.price,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtBodyBlack900,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 9,
                ),
                child: Text(
                  "lbl_qty_1".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtBodyGray600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
