/*
Author: XamDesign
Date: 8.06.2023
*/

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:xam_shoes_app/ui/views/enable_location/enable_location_screen.dart';
import 'package:xam_shoes_app/ui/views/track_location/track_location_screen.dart';

class TrackLocationController extends GetxController {
  void checkLocationPermission() async {
    final status = await Permission.location.status;
    if (status.isGranted) {
      Get.to(() => const TrackLocationScreen());
    } else {
      debugPrint("location denied");
      Get.to(() => const EnableLocationScreen());
    }
  }

  void requestLocationPermission() async {
    if (await Permission.location.serviceStatus.isEnabled) {
      final status = await Permission.location.status;
      if (status.isGranted) {
        Get.off(() => const TrackLocationScreen());
      } else {
        final locationStatus = await [Permission.location].request();
        if (locationStatus.isNotEmpty) {
          if (locationStatus[Permission.location] == PermissionStatus.granted ||
              locationStatus[Permission.locationWhenInUse] ==
                  PermissionStatus.granted) {
            Get.off(() => const TrackLocationScreen());
          } else if (locationStatus[Permission.location] ==
              PermissionStatus.permanentlyDenied ||
              locationStatus[Permission.locationWhenInUse] ==
                  PermissionStatus.permanentlyDenied) {
            openAppSettings();
          } else {
            debugPrint("location permission denied");
          }
        }
      }
    } else {
      openAppSettings();
    }
  }
}
