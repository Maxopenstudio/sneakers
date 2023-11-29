/*
Author: XamDesign
Date: 6.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/track_location/components/track_location_delivery_info.dart';
import 'package:xam_shoes_app/ui/views/track_location/components/track_location_info_point.dart';

class TrackLocationInfo extends StatelessWidget {
  const TrackLocationInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
      ),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Theme
            .of(context)
            .scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Wrap(
        children: [
          const TrackLocationDeliveryInfo(),
          TrackLocationInfoPoint(
            isDelivery: false,
            title: TranslationKeys.pickup.tr,
            address: "London SW1A 0AA, Great Britain",
          ),
          TrackLocationInfoPoint(
            isDelivery: true,
            title: TranslationKeys.delivery.tr,
            address:
            "Riverside Building, County Hall, London SE1 7PB, Great Britain",
          ),
        ],
      ),
    );
  }
}
