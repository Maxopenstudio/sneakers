// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductOptions _$ProductOptionsFromJson(Map<String, dynamic> json) =>
    ProductOptions(
      productOptionId: json['product_option_id'] as String,
      optionValue: json['option_value'],
    );

Map<String, dynamic> _$ProductOptionsToJson(ProductOptions instance) =>
    <String, dynamic>{
      'product_option_id': instance.productOptionId,
      'option_value': instance.optionValue,
    };
