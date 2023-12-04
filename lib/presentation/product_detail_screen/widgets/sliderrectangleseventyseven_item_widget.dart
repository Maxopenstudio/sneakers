import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';

import '../controller/product_detail_controller.dart';
import '../models/sliderrectangleseventyseven_item_model.dart';

// ignore: must_be_immutable
class SliderrectangleseventysevenItemWidget extends StatelessWidget {
  SliderrectangleseventysevenItemWidget(this.sliderrectangleseventysevenItemModelObj);

  SliderrectangleseventysevenItemModel sliderrectangleseventysevenItemModelObj;

  var controller = Get.find<ProductDetailController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        270,
      ),
      width: getHorizontalSize(
        264,
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgRectangle77,
            height: getSize(
              264,
            ),
            width: getSize(
              264,
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPngegg11,
            height: getVerticalSize(
              259,
            ),
            width: getHorizontalSize(
              252,
            ),
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }
}
