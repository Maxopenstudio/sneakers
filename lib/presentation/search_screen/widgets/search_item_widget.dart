import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';

import '../controller/search_controller.dart' as search;
import '../models/search_item/search_item_model.dart';

// ignore: must_be_immutable
class SearchItemWidget extends StatelessWidget {
  SearchItemWidget(this.model);

  SearchItemModel model;

  var controller = Get.find<search.SearchProductController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.groupFiftySixController.text = model.text;
      },
      child: Row(
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
              model.text,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtBodyGray600,
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () => controller.removeSearchItemModel(model),
            child: CustomImageView(
              svgPath: ImageConstant.imgClose,
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
