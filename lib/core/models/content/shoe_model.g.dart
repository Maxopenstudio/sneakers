// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shoe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Shoe _$ShoeFromJson(Map<String, dynamic> json) => Shoe(
      id: json['id'] as int,
      sku: json['sku'] as String,
      name: json['name'] as String,
      manufacturer: json['manufacturer'] as String,
      manufacturer_id: json['manufacturer_id'] as int,
      model: json['model'] as String,
      image: json['image'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      price: json['price'] as int,
      price_formated: json['price_formated'] as String,
      rating: json['rating'] as int,
      description: json['description'] as String,
      special: json['special'] as int,
      special_formated: json['special_formated'] as String,
      special_start_date: json['special_start_date'] as String,
      special_end_date: json['special_end_date'] as String,
      tag: json['tag'] as String,
      quantity: json['quantity'] as int,
      stock_status: json['stock_status'] as String,
    );

Map<String, dynamic> _$ShoeToJson(Shoe instance) => <String, dynamic>{
      'id': instance.id,
      'sku': instance.sku,
      'name': instance.name,
      'manufacturer': instance.manufacturer,
      'manufacturer_id': instance.manufacturer_id,
      'model': instance.model,
      'image': instance.image,
      'images': instance.images,
      'price': instance.price,
      'price_formated': instance.price_formated,
      'rating': instance.rating,
      'description': instance.description,
      'special': instance.special,
      'special_formated': instance.special_formated,
      'special_start_date': instance.special_start_date,
      'special_end_date': instance.special_end_date,
      'tag': instance.tag,
      'quantity': instance.quantity,
      'stock_status': instance.stock_status,
    };
