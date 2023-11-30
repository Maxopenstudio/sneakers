// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      category_id: json['category_id'] as int,
      parent_id: json['parent_id'] as int,
      name: json['name'] as String,
      image: json['image'] as String?,
      original_image: json['original_image'] as String?,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'category_id': instance.category_id,
      'parent_id': instance.parent_id,
      'name': instance.name,
      'image': instance.image,
      'original_image': instance.original_image,
    };
