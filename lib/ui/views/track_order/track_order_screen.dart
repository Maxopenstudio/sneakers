/*
Author: XamDesign
Date: 7.06.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/models/order_model.dart';
import 'package:xam_shoes_app/ui/views/track_order/components/track_order_app_bar.dart';
import 'package:xam_shoes_app/ui/views/track_order/components/track_order_body.dart';

class TrackOrderScreen extends StatelessWidget {
  final Order order;

  const TrackOrderScreen({
    required this.order,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TrackOrderAppBar(),
      body: TrackOrderBody(order: order),
    );
  }
}
