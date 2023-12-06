// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductAttribute _$ProductAttributeFromJson(Map<String, dynamic> json) =>
    ProductAttribute(
      attributeId: json['attribute_id'] as String,
      name: json['name'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$ProductAttributeToJson(ProductAttribute instance) =>
    <String, dynamic>{
      'attribute_id': instance.attributeId,
      'name': instance.name,
      'text': instance.text,
    };
