import 'package:get/get.dart';
import 'package:shoes_app/core/utils/pref_utils.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';

import '../products_controller/products_controller.dart';
import 'models/personal_data_model.dart';

class AuthController extends GetxController {
  AuthController(this.apiClient);

  final ApiClient apiClient;

  Rx<PersonalDataModel?> personalDataModel = (null as PersonalDataModel?).obs;

  Future<bool> logout() => apiClient.logout();

  @override
  void onInit() {
    //Logout controller
    personalDataModel.listen((personalData) async {
      if (personalData != null) {
        print("SET LOGIN");
        PrefUtils.setLogin(true);
        final productsController =  Get.find<ProductsController>();
        productsController.favoriteProducts.value =  (await apiClient.getFavoriteProducts()).map((product) => productsController.getProductById(product)).toList();

        print("favoriteProducts.length - ${productsController.favoriteProducts.length}");
      } else {
        print("SET LOGOUT");
        PrefUtils.setLogin(false);
      }
    });
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
