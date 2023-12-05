// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesItemModel _$CategoriesItemModelFromJson(Map<String, dynamic> json) =>
    CategoriesItemModel(
      image: json['image'] as String,
      name: json['name'] as String,
      categoryId: json['category_id'] as int,
      parentId: json['parent_id'] as int,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => CategoriesItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoriesItemModelToJson(
        CategoriesItemModel instance) =>
    <String, dynamic>{
      'category_id': instance.categoryId,
      'parent_id': instance.parentId,
      'image': instance.image,
      'name': instance.name,
      'categories': instance.categories,
    };
