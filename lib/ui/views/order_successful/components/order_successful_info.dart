/*
Author: XamDesign
Date: 3.06.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/order_successful/components/order_successful_text.dart';
import 'package:xam_shoes_app/ui/views/order_successful/components/order_successful_title.dart';

class OrderSuccessfulInfo extends BaseStatelessWidget {
  const OrderSuccessfulInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
        vertical: 16.0,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          OrderSuccessfulTitle(),
          OrderSuccessfulText(),
        ],
      ),
    );
  }
}
