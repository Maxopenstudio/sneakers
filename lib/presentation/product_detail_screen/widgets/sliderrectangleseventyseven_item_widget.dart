import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';

import '../controller/product_detail_controller.dart';
import '../models/sliderrectangleseventyseven_item_model.dart';

// ignore: must_be_immutable
class SliderrectangleseventysevenItemWidget extends StatelessWidget {
  const SliderrectangleseventysevenItemWidget(this.image);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(left: 16, right: 16),

      child: CustomImageView(
        url: image,
        fit: BoxFit.cover,
        width: double.infinity,
        alignment: Alignment.topCenter,
      ),
    );
  }
}
