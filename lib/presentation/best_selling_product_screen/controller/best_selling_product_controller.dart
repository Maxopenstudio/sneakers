import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';
import 'package:shoes_app/presentation/home_screen_page/models/home_screen_model.dart';
import 'package:shoes_app/presentation/home_screen_page/models/product_model.dart';

class BestSellingProductController extends GetxController {
  BestSellingProductController(this.apiClient);

  final ApiClient apiClient;


  RxList<ProductModel> bestsellingProducts = List<ProductModel>.empty().obs;

  @override
  void onInit() async {
    final List<ProductModel> fetch = (await apiClient.getBestsellerProducts()) ?? [];
    bestsellingProducts = fetch.obs;
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
