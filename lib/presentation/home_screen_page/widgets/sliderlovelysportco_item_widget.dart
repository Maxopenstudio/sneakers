import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';

import '../controller/home_screen_controller.dart';

// ignore: must_be_immutable
class SliderlovelysportcoItemWidget extends StatelessWidget {
  SliderlovelysportcoItemWidget(this.sliderlovelysportcoItemModelObj);

  String sliderlovelysportcoItemModelObj;

  var controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        140,
      ),
      margin: getMargin(right: 16),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConstant.imagePath + sliderlovelysportcoItemModelObj),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(getHorizontalSize(8))),
    );
  }
}
