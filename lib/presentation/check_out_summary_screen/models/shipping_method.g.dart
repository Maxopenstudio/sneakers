// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShippingMethod _$ShippingMethodFromJson(Map<String, dynamic> json) =>
    ShippingMethod(
      title: json['title'] as String,
      code: json['code'] as String,
      cost: json['cost'],
      taxClassId: ShippingMethod._taxClassIdFromJson(json['tax_class_id']),
      formattedCost: ShippingMethod._formattedCostFromJson(json['text']),
    );

Map<String, dynamic> _$ShippingMethodToJson(ShippingMethod instance) =>
    <String, dynamic>{
      'title': instance.title,
      'code': instance.code,
      'cost': instance.cost,
      'tax_class_id': instance.taxClassId,
      'text': instance.formattedCost,
    };
