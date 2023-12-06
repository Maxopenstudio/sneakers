import 'package:json_annotation/json_annotation.dart';
import 'package:shoes_app/presentation/home_screen_page/models/product_attribute_group.dart';
import 'package:shoes_app/presentation/home_screen_page/models/product_category.dart';
import 'package:shoes_app/presentation/home_screen_page/models/product_options.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  @JsonKey(name: "product_id")
  final int productId;
  final String name;
  final String? manufacturer;
  final String? model;
  final String? image;
  final String? thumb;
  final List<String>? images;
  final double price;
  @JsonKey(name: "price_formated")
  final String priceFormated;
  final String description;
  @JsonKey(name: "attribute_groups")
  final List<ProductAttributeGroup>? attributeGroups;
  final double special;
  @JsonKey(name: "special_formated")
  final String specialFormated;
  final List<ProductOptions>? options;
  final List<ProductCategory>? category;

  const ProductModel({
    required this.productId,
    required this.name,
    required this.manufacturer,
    required this.model,
    required this.image,
    required this.thumb,
    required this.images,
    required this.price,
    required this.priceFormated,
    required this.description,
    required this.attributeGroups,
    required this.special,
    required this.specialFormated,
    required this.options,
    required this.category,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
