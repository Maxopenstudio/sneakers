import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';
import 'package:shoes_app/presentation/check_out_summary_screen/models/shipping_method.dart';

class ShippingMethodController extends GetxController {
  ShippingMethodController(this.apiClient);

  final ApiClient apiClient;

  RxList<ShippingMethod> shippingMethods = RxList.empty();
  Rx<ShippingMethod?> selectedShippingMethod = null.obs;

  Future<void> updateShippingMethods() async {
    try {
      print("START FETCH shippingMethods");
      shippingMethods.value = (await apiClient.fetchShippingMethods());
      update();
      print("UPDATE FETCH shippingMethods: ${shippingMethods}");

    } catch (e) {
      print("Problem in updateShippingMethods - $e");
    }
  }

  Future<void> setShippingMethod(String code) async {
    try {
      ShippingMethod? shippingMethod = await apiClient.setShipmentMethod(code);
      if (shippingMethod != null) {
        selectedShippingMethod = shippingMethod.obs;
        update();
      }
    } catch (e) {
      print("Problem in setShippingMethod - $e");
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    /*
    group146Controller.dispose();
    group147Controller.dispose();
    group148Controller.dispose();
    group149Controller.dispose();
     */
  }
}
