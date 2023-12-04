import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';

import '../controller/search_controller.dart' as search;
import '../models/search_item_model.dart';

// ignore: must_be_immutable
class SearchItemWidget extends StatelessWidget {
  SearchItemWidget(this.searchItemModelObj);

  SearchItemModel searchItemModelObj;

  var controller = Get.find<search.SearchController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          svgPath: ImageConstant.imgClock,
          height: getSize(
            24,
          ),
          width: getSize(
            24,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 16,
            top: 1,
            bottom: 1,
          ),
          child: Text(
            "lbl_nike_airmax".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtBodyGray600,
          ),
        ),
        Spacer(),
        CustomImageView(
          svgPath: ImageConstant.imgClose,
          height: getSize(
            24,
          ),
          width: getSize(
            24,
          ),
        ),
      ],
    );
  }
}
