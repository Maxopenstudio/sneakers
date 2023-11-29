/*
Author: XamDesign
Date: 24.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Shoe {
  int id;
  String sku;
  String brand;
  String model;
  List<Color> colors;
  String gender;
  double retailPrice;
  String releaseYear;
  String outerMaterial;
  String lining;
  String sole;
  int stock;
  int? discountRate;
  List<String> images;
  RxBool isFavorite = false.obs;
  RxBool isAddedToCartDone = false.obs;

  Shoe({
    required this.id,
    required this.sku,
    required this.brand,
    required this.model,
    required this.colors,
    required this.stock,
    required this.gender,
    required this.retailPrice,
    required this.releaseYear,
    required this.outerMaterial,
    required this.lining,
    required this.sole,
    required this.images,
    required this.isFavorite,
    required this.isAddedToCartDone,
    this.discountRate = 0,
  });
}
