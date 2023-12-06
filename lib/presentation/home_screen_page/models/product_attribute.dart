import 'package:json_annotation/json_annotation.dart';

part 'product_attribute.g.dart';

@JsonSerializable()
class ProductAttribute {
  @JsonKey(name: "attribute_id")
  final String attributeId;
  final String name;
  final String text;

  const ProductAttribute({required this.attributeId, required this.name, required this.text});

  factory ProductAttribute.fromJson(Map<String, dynamic> json) => _$ProductAttributeFromJson(json);

  Map<String, dynamic> toJson() => _$ProductAttributeToJson(this);
}