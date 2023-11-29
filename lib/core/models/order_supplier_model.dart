/*
Author: XamDesign
Date: 7.06.2023
*/

import 'package:xam_shoes_app/core/models/order_location_model.dart';

class OrderSupplier {
  int id;
  String name;
  String logo;
  OrderLocation location;

  OrderSupplier({
    required this.id,
    required this.name,
    required this.logo,
    required this.location,
  });
}
