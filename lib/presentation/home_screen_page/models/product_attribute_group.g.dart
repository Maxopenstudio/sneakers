// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_attribute_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductAttributeGroup _$ProductAttributeGroupFromJson(
        Map<String, dynamic> json) =>
    ProductAttributeGroup(
      attributeGroupId: json['attribute_group_id'] as String,
      name: json['name'] as String,
      attribute: (json['attribute'] as List<dynamic>)
          .map((e) => ProductAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductAttributeGroupToJson(
        ProductAttributeGroup instance) =>
    <String, dynamic>{
      'attribute_group_id': instance.attributeGroupId,
      'name': instance.name,
      'attribute': instance.attribute,
    };
