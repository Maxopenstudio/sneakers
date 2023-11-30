/*
Author: XamDesign
Date: 7.06.2023
*/

import 'package:latlong2/latlong.dart';

class OrderLocation {
  String address;
  LatLng latLng;

  OrderLocation({
    required this.address,
    required this.latLng,
  });
}
