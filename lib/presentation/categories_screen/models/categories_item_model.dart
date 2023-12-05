class CategoriesItemModel {
  int categoryId;
  int parentId;
  String image;
  String name;
  List<CategoriesItemModel> categories;

  CategoriesItemModel({required this.image, required this.name, required this.categoryId, required this.parentId, required this.categories});

  Map<String, dynamic> toMap() {
    return {
      'categoryId': this.categoryId,
      'parentId': this.parentId,
      'image': this.image,
      'name': this.name,
      'categories': this.categories,
    };
  }

  factory CategoriesItemModel.fromMap(Map<String, dynamic> map) {
    return CategoriesItemModel(
      categoryId: map['categoryId'] as int,
      parentId: map['parentId'] as int,
      image: map['image'] as String,
      name: map['name'] as String,
      categories: map['categories'] as List<CategoriesItemModel>,
    );
  }
}
