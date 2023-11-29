/*
Author: XamDesign
Date: 6.06.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:xam_shoes_app/ui/views/track_location/components/track_location_marker.dart';

class TrackLocationMap extends StatelessWidget {
  const TrackLocationMap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: const LatLng(51.509364, -0.128928),
        zoom: 10.0,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.xamdesign.shoeApp',
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: const LatLng(51.5286416, -0.1015987),
              width: 100,
              height: 100,
              builder: (context) => const TrackLocationMarker(),
            ),
          ],
        ),
      ],
    );
  }
}
