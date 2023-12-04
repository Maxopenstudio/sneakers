/*
Author: XamDesign
Date: 24.05.2023
*/

import 'package:json_annotation/json_annotation.dart';

part 'shoe_model.g.dart';

@JsonSerializable()
class Shoe {
  int id;
  String sku;
  String name;
  String manufacturer;
  int manufacturer_id;
  String model;
  String image;
  List<String> images;
  int price;
  String price_formated;
  int rating;
  String description;
  int special;
  String special_formated;
  String special_start_date;
  String special_end_date;
  String tag;
  int quantity;
  String stock_status;

  Shoe({
    required this.id,
    required this.sku,
    required this.name,
    required this.manufacturer,
    required this.manufacturer_id,
    required this.model,
    required this.image,
    required this.images,
    required this.price,
    required this.price_formated,
    required this.rating,
    required this.description,
    required this.special,
    required this.special_formated,
    required this.special_start_date,
    required this.special_end_date,
    required this.tag,
    required this.quantity,
    required this.stock_status,
  });

  factory Shoe.fromJson(Map<String, dynamic> json) => _$ShoeFromJson(json);

  Map<String, dynamic> toJson() => _$ShoeToJson(this);
}
