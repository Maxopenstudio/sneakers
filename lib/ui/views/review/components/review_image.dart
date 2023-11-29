/*
Author: XamDesign
Date: 9.06.2023
*/

import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';

class ReviewImage extends BaseStatelessWidget {
  final String image;

  const ReviewImage({
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DeviceUtils.getWidth(context),
      height: DeviceUtils.getDynamicHeight(context, 0.4),
      padding: const EdgeInsets.all(16.0),
      child: Image.asset(image, fit: BoxFit.fitWidth),
    );
  }
}
