/*
Author: XamDesign
Date: 12.06.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';

class TrackOrderInfoImage extends BaseStatelessWidget {
  final String image;

  const TrackOrderInfoImage({
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DeviceUtils.getDynamicWidth(context, 0.2),
      height: DeviceUtils.getDynamicHeight(context, 0.1),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Image.asset(image),
    );
  }
}
