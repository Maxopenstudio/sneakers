/*
Author: XamDesign
Date: 7.06.2023
*/

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'package:xam_shoes_app/core/enums/order_status_enum.dart';
import 'package:xam_shoes_app/core/models/order_model.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/core/widgets/custom_dashed_horizontal_line.dart';
import 'package:xam_shoes_app/ui/views/track_order/components/track_order_delivery_info_point.dart';

class TrackOrderLocationInfo extends StatelessWidget {
  final Order order;

  const TrackOrderLocationInfo({
    required this.order,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
            vertical: 16.0,
          ),
          child: Text(
            TranslationKeys.location.tr,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Stack(
          alignment: Alignment.centerLeft,
          children: [
            Column(
              children: [
                TrackOrderDeliveryInfoPoint(
                  isDelivery: false,
                  title: TranslationKeys.orderReceived.tr,
                  description: order.location.address,
                ),
                const SizedBox(height: 16.0),
                TrackOrderDeliveryInfoPoint(
                  isDelivery: true,
                  title: order.status == OrderStatus.delivered
                      ? TranslationKeys.delivered.tr
                      : TranslationKeys.estimatedDeliveryDate.tr,
                  description:
                  DateFormat.yMd().add_jm().format(order.deliveryDate),
                ),
              ],
            ),
            Positioned(
              left: 0,
              child: Transform.translate(
                offset: const Offset(17, -9),
                child: Transform.rotate(
                  angle: 90 * pi / 180,
                  child: SizedBox(
                    width: DeviceUtils.getDynamicWidth(context, 0.15),
                    child: const CustomDashedHorizontalLine(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
