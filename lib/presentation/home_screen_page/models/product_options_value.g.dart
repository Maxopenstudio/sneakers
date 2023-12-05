// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_options_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductOptionsValue _$ProductOptionsValueFromJson(Map<String, dynamic> json) =>
    ProductOptionsValue(
      image: json['image'] as String?,
      price: (json['price'] as num).toDouble(),
      priceFormated: json['price_formated'] as String,
      productOptionValueId: json['product_option_value_id'] as int,
      optionValueId: json['option_value_id'] as int,
      name: json['name'] as String,
      quantity: json['quantity'] as String,
    );

Map<String, dynamic> _$ProductOptionsValueToJson(
        ProductOptionsValue instance) =>
    <String, dynamic>{
      'image': instance.image,
      'price': instance.price,
      'price_formated': instance.priceFormated,
      'product_option_value_id': instance.productOptionValueId,
      'option_value_id': instance.optionValueId,
      'name': instance.name,
      'quantity': instance.quantity,
    };
