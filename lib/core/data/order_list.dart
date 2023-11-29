/*
Author: XamDesign
Date: 7.06.2023
*/

import 'package:latlong2/latlong.dart';

import 'package:xam_shoes_app/core/enums/order_status_enum.dart';
import 'package:xam_shoes_app/core/models/order_location_model.dart';
import 'package:xam_shoes_app/core/models/order_model.dart';
import 'package:xam_shoes_app/core/data/order_supplier_list.dart';
import 'package:xam_shoes_app/core/data/shoe_list.dart';

List<Order> orderList = [
  Order(
    id: 1,
    code: "OD - 54654643135",
    product: shoeList[0],
    status: OrderStatus.shipping,
    orderDate: DateTime(2023, 5, 20, 0, 0, 0),
    deliveryDate: DateTime(2023, 5, 25, 0, 0, 0),
    location: OrderLocation(
      address: "London SW1A 1AA, Great Britain",
      latLng: const LatLng(51.5016195, -0.1550089),
    ),
    supplier: orderSupplierList[0],
  ),
  Order(
    id: 2,
    code: "OD - 77564678678",
    product: shoeList[1],
    status: OrderStatus.delivered,
    orderDate: DateTime(2023, 5, 20, 0, 0, 0),
    deliveryDate: DateTime(2023, 5, 25, 0, 0, 0),
    location: OrderLocation(
      address: "London SW1A 1AA, Great Britain",
      latLng: const LatLng(51.5016195, -0.1550089),
    ),
    supplier: orderSupplierList[1],
  ),
  Order(
    id: 3,
    code: "OD - 54612843465",
    product: shoeList[2],
    status: OrderStatus.delivered,
    orderDate: DateTime(2023, 5, 20, 0, 0, 0),
    deliveryDate: DateTime(2023, 5, 25, 0, 0, 0),
    location: OrderLocation(
      address: "London SW1A 1AA, Great Britain",
      latLng: const LatLng(51.5016195, -0.1550089),
    ),
    supplier: orderSupplierList[2],
  ),
  Order(
    id: 4,
    code: "OD - 54659584635",
    product: shoeList[3],
    status: OrderStatus.delivered,
    orderDate: DateTime(2023, 5, 20, 0, 0, 0),
    deliveryDate: DateTime(2023, 5, 25, 0, 0, 0),
    location: OrderLocation(
      address: "London SW1A 1AA, Great Britain",
      latLng: const LatLng(51.5016195, -0.1550089),
    ),
    supplier: orderSupplierList[3],
  ),
  Order(
    id: 5,
    code: "OD - 56431256894",
    product: shoeList[4],
    status: OrderStatus.delivered,
    orderDate: DateTime(2023, 5, 20, 0, 0, 0),
    deliveryDate: DateTime(2023, 5, 25, 0, 0, 0),
    location: OrderLocation(
      address: "London SW1A 1AA, Great Britain",
      latLng: const LatLng(51.5016195, -0.1550089),
    ),
    supplier: orderSupplierList[4],
  ),
];
