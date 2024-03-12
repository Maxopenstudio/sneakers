import 'package:get/get.dart';
import 'package:shoes_app/core/utils/pref_utils.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';
import 'package:shoes_app/presentation/check_out_payment_method_screen/controller/check_out_payment_method_controller.dart';
import 'package:shoes_app/presentation/terms_condition_screen/controller/terms_condition_controller.dart';

import '../../presentation/cart_screen/controller/cart_controller.dart';
import '../../presentation/check_out_three_screen/controller/check_out_three_controller.dart';
import '../../presentation/privacy_policy_screen/controller/privacy_policy_controller.dart';
import '../../presentation/select_address_screen/controller/add_new_address_controller.dart';
import '../../presentation/select_address_screen/controller/select_address_controller.dart';
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
        final productsController = Get.find<ProductsController>();
        productsController.favoriteProducts.value = (await apiClient.getFavoriteProducts()).map((product) => productsController.getProductById(product)).toList();
        final cartController = Get.find<CartController>();
        final cart = await apiClient.fetchCart();
        cartController.cart.value = cart;
        cartController.cartProducts.value = cart.products;
        final orderController = Get.find<CheckOutThreeController>();
        orderController.orders.value = await apiClient.fetchCustomerOrders();
        final privacyPolicyController = Get.find<PrivacyPolicyController>();
        privacyPolicyController.termsAndPolicyData.value = await apiClient.fetchTermsAndPolicyData();
        final termsConditionController = Get.find<TermsConditionController>();
        termsConditionController.termsAndPolicyData.value = await apiClient.fetchTermsAndPolicyData();
        final selectAddressController = Get.find<SelectAddressController>();
        selectAddressController.addresses.value = await apiClient.fetchUserAddresses();
        final addNewAddressController = Get.find<AddNewAddressController>();
        addNewAddressController.countries.value = await apiClient.fetchCountries();
        // var zone = await apiClient.fetchZones(6);
        // print(zone.zones.length);
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
