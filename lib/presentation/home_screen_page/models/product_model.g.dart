// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      productId: json['product_id'] as int,
      name: json['name'] as String,
      manufacturer: json['manufacturer'] as String?,
      model: json['model'] as String?,
      image: json['image'] as String?,
      thumb: json['thumb'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      price: (json['price'] as num).toDouble(),
      priceFormated: json['price_formated'] as String,
      description: json['description'] as String,
      attributeGroups: (json['attribute_groups'] as List<dynamic>?)
          ?.map(
              (e) => ProductAttributeGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
      special: (json['special'] as num).toDouble(),
      specialFormated: json['special_formated'] as String,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => ProductOptions.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'name': instance.name,
      'manufacturer': instance.manufacturer,
      'model': instance.model,
      'image': instance.image,
      'thumb': instance.thumb,
      'images': instance.images,
      'price': instance.price,
      'price_formated': instance.priceFormated,
      'description': instance.description,
      'attribute_groups': instance.attributeGroups,
      'special': instance.special,
      'special_formated': instance.specialFormated,
      'options': instance.options,
    };
