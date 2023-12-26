import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';

import '../controller/home_screen_controller.dart';

// ignore: must_be_immutable
class SliderlovelysportcoItemWidget extends StatelessWidget {
  SliderlovelysportcoItemWidget(this.bannerImage);

  final String bannerImage;

  var controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {

    return Container(
      height: getVerticalSize(
        140,
      ),
      margin: getMargin(right: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(getHorizontalSize(8))),
      child: CustomImageView(
        url: bannerImage,
        fit: BoxFit.fill,
      ),
    );
  }
}
