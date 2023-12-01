// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manufacturer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Manufacturer _$ManufacturerFromJson(Map<String, dynamic> json) => Manufacturer(
      manufacturer_id: json['manufacturer_id'] as int,
      name: json['name'] as String,
      image: json['image'] as String?,
      original_image: json['original_image'] as String,
    );

Map<String, dynamic> _$ManufacturerToJson(Manufacturer instance) =>
    <String, dynamic>{
      'manufacturer_id': instance.manufacturer_id,
      'name': instance.name,
      'image': instance.image,
      'original_image': instance.original_image,
    };
