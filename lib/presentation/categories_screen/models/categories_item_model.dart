import 'package:json_annotation/json_annotation.dart';

part 'categories_item_model.g.dart';

@JsonSerializable()
class CategoriesItemModel {
  @JsonKey(name: "category_id")
  int categoryId;
  @JsonKey(name: "parent_id")
  int parentId;
  String image;
  String name;
  List<CategoriesItemModel> categories;

  CategoriesItemModel({required this.image, required this.name, required this.categoryId, required this.parentId, required this.categories});

  factory CategoriesItemModel.fromJson(Map<String, dynamic> json) => _$CategoriesItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoriesItemModelToJson(this);
}
