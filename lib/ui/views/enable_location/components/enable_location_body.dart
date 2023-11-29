/*
Author: XamDesign
Date: 6.06.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/enable_location/components/enable_location_icon.dart';
import 'package:xam_shoes_app/ui/views/enable_location/components/enable_location_info.dart';

class EnableLocationBody extends BaseStatelessWidget {
  const EnableLocationBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: DeviceUtils.getHeight(context),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            EnableLocationIcon(),
            EnableLocationInfo(),
          ],
        ),
      ),
    );
  }
}
