/*
Author: XamDesign
Date: 6.06.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/ui/views/track_location/components/track_location_map.dart';

class TrackLocationBody extends BaseStatelessWidget {
  const TrackLocationBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TrackLocationMap();
  }
}
