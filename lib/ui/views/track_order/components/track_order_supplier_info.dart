/*
Author: XamDesign
Date: 12.06.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/models/order_model.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/ui/views/track_order/components/track_order_supplier_info_text.dart';

class TrackOrderSupplierInfo extends BaseStatelessWidget {
  final Order order;

  const TrackOrderSupplierInfo({
    required this.order,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TrackOrderSupplierInfoText(description: order.supplier.name),
        TrackOrderSupplierInfoText(
          description: order.supplier.location.address,
        ),
      ],
    );
  }
}
