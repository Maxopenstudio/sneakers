/*
Author: XamDesign
Date: 7.06.2023
*/

import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/enums/order_status_enum.dart';
import 'package:xam_shoes_app/core/models/order_model.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/track_order/components/track_order_info_top_section.dart';
import 'package:xam_shoes_app/ui/views/track_order/components/track_order_review_button.dart';
import 'package:xam_shoes_app/ui/views/track_order/components/track_order_supplier_info.dart';

class TrackOrderInfo extends StatelessWidget {
  final Order order;

  const TrackOrderInfo({
    required this.order,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DeviceUtils.getWidth(context),
      margin: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
        vertical: 16.0,
      ),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: BaseController.themeController.isDark.value
            ? kDarkFieldColor
            : kLightFieldColor,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TrackOrderInfoTopSection(order: order),
          TrackOrderSupplierInfo(order: order),
          if (order.status == OrderStatus.delivered)
            TrackOrderReviewButton(product: order.product),
        ],
      ),
    );
  }
}
