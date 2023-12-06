import 'package:get/get.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';
import 'package:shoes_app/presentation/home_screen_page/models/product_model.dart';

class ProductsController extends GetxController {
  ProductsController(this.apiClient);

  final ApiClient apiClient;

  RxList<ProductModel> allProducts = List<ProductModel>.empty().obs;

  ProductModel getProductById(int productId) => allProducts.firstWhere((product) => product.productId == productId);

  List<ProductModel> getProductsByCategory(int categoryId) {
    List<ProductModel> categoryProducts = List.empty(growable: true);
    allProducts.forEach((product) {
      bool categoryIsMatch = product.category!.any((category) => category.id == categoryId);
      if (categoryIsMatch) {
        categoryProducts.add(product);
      }
    });

    return categoryProducts;
  }

  @override
  void onReady() async {
    allProducts = (await apiClient.getAllProducts()).obs;
    print("ALL RPODUCTS FETHCED");
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
