import 'package:json_annotation/json_annotation.dart';
import 'package:shoes_app/presentation/home_screen_page/models/product_attribute.dart';

part 'product_attribute_group.g.dart';

@JsonSerializable()
class ProductAttributeGroup {
  @JsonKey(name: "attribute_group_id")
  final String attributeGroupId;
  final String name;
  final List<ProductAttribute> attribute;

  const ProductAttributeGroup({
    required this.attributeGroupId,
    required this.name,
    required this.attribute,
  });

  factory ProductAttributeGroup.fromJson(Map<String, dynamic> json) => _$ProductAttributeGroupFromJson(json);

  Map<String, dynamic> toJson() => _$ProductAttributeGroupToJson(this);
}
