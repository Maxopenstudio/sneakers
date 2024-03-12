import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/select_address_screen/models/select_address_model.dart';

import '../../../data/apiClient/api_client.dart';

class SelectAddressController extends GetxController {
  SelectAddressController(this.apiClient);

  final ApiClient apiClient;

  RxString radioGroup = "".obs;
  Rx<AddressResponse> addresses = AddressResponse(addressId: '', addresses: []).obs;

  changeRadio(String value) {
    radioGroup.value = value;
    setAddress(value);
    update();
  }

  String fullAddress = '';

  set fullAddressSet(int index) {
    this.fullAddress = "${addresses.value.addresses[index].address1}, ${addresses.value.addresses[index].city}\n${addresses.value.addresses[index].postcode}, ${addresses.value.addresses[index].country}";
  }

  Future<void> setAddress(String id) async {
    await Future.wait([
      apiClient.setCheckoutShippingAddress(id: id),
      apiClient.setCheckoutPaymentAddress(id: id),
    ]);
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
