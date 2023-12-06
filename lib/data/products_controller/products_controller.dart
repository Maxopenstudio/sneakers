import 'package:get/get.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';
import 'package:shoes_app/presentation/filter_bottomsheet/controller/filter_controller.dart';
import 'package:shoes_app/presentation/home_screen_page/models/product_model.dart';

class ProductsController extends GetxController {
  ProductsController(this.apiClient);

  final ApiClient apiClient;

  RxList<ProductModel> allProducts = List<ProductModel>.empty().obs;
  RxList<ProductModel> featuredProducts = List<ProductModel>.empty().obs;

  ProductModel getProductById(int productId) => allProducts.firstWhere((product) => product.productId == productId);

  List<ProductModel> getProductsByCategory(int categoryId, {FilterMode? filterMode}) {
    List<ProductModel> categoryProducts = List.empty(growable: true);
    allProducts.forEach((product) {
      bool categoryIsMatch = product.category!.any((category) => category.id == categoryId);
      if (categoryIsMatch) {
        categoryProducts.add(product);
      }
    });

    if (filterMode != null) {
      categoryProducts = filterProducts(categoryProducts, filterMode);
    }

    return categoryProducts;
  }

  static List<ProductModel> filterProducts(List<ProductModel> products, FilterMode filterMode) {
    List<ProductModel> filteredProducts = List.from(products);
    switch(filterMode) {
      case FilterMode.none:
        return filteredProducts;
      case FilterMode.newAdded:
        filteredProducts.sort((a, b) => b.dateAdded!.compareTo(a.dateAdded!));
        return filteredProducts;
      case FilterMode.priceHigh:
        filteredProducts.sort((a, b) => b.price.compareTo(a.price));
        return filteredProducts;
      case FilterMode.priceLow:
        filteredProducts.sort((a, b) => a.price.compareTo(b.price));
        return filteredProducts;
    }
  }

  @override
  void onReady() async {
    featuredProducts = (await apiClient.getFeaturedProducts()).obs;
    allProducts = (await apiClient.getAllProducts()).obs;
    print("ALL RPODUCTS FETHCED");
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
