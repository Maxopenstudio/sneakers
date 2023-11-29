/*
Author: XamDesign
Date: 20.05.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';

class OnboardingImage extends BaseStatelessWidget {
  const OnboardingImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(DeviceUtils.getDynamicWidth(context, 0.07), 0),
      child: Image.asset(
        "assets/images/onboarding_image.png",
        width: DeviceUtils.getWidth(context),
      ),
    );
  }
}
