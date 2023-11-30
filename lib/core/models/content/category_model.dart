/*
Author: XamDesign
Date: 24.05.2023
*/
import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable()
class Category {
  int category_id;
  int parent_id;
  String name;
  String? image;
  String? original_image;

  Category({
    required this.category_id,
    required this.parent_id,
    required this.name,
    required this.image,
    required this.original_image,
  });

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
