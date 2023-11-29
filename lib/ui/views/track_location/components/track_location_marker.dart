/*
Author: XamDesign
Date: 13.06.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: always_use_package_imports
import '../../../../core/utils/base/base_stateless.dart';

class TrackLocationMarker extends BaseStatelessWidget {
  const TrackLocationMarker({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/images/location_marker.svg",
      width: 96.0,
      height: 96.0,
    );
  }
}
