/*
Author: XamDesign
Date: 12.06.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/models/order_model.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/ui/views/track_order/components/track_order_info_code.dart';
import 'package:xam_shoes_app/ui/views/track_order/components/track_order_info_image.dart';

class TrackOrderInfoTopSection extends BaseStatelessWidget {
  final Order order;

  const TrackOrderInfoTopSection({
    required this.order,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: TrackOrderInfoImage(image: order.product.images.first)),
        const SizedBox(width: 16.0),
        TrackOrderInfoCode(code: order.code),
      ],
    );
  }
}
