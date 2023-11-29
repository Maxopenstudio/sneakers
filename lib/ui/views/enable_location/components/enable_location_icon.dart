/*
Author: XamDesign
Date: 6.06.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';

class EnableLocationIcon extends BaseStatelessWidget {
  const EnableLocationIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DeviceUtils.getDynamicWidth(context, 0.7),
      height: DeviceUtils.getDynamicHeight(context, 0.4),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/enable_location_icon.png"),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}
