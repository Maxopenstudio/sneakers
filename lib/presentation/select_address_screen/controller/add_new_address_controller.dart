import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';
import 'package:shoes_app/presentation/select_address_screen/controller/select_address_controller.dart';

import '../models/select_address_model.dart';

class AddNewAddressController extends GetxController {
  AddNewAddressController(this.apiClient);

  ApiClient apiClient;
  RxList<Country> countries = List<Country>.empty().obs;
  RxList<Zone> zones = List<Zone>.empty().obs;
  TextEditingController addressFirstname = TextEditingController();

  TextEditingController addressLastname = TextEditingController();

  TextEditingController addressCity = TextEditingController();

  TextEditingController addressFirst = TextEditingController();

  TextEditingController addressSecond = TextEditingController();

  TextEditingController countryId = TextEditingController();

  TextEditingController postCode = TextEditingController();

  TextEditingController zoneId = TextEditingController();

  TextEditingController addressCompany = TextEditingController();

  Future<void> selectCountry(Country? country) async {
    countryId.text = country!.countryId.toString();
    await apiClient.fetchZones(int.parse(countryId.text));
  }

  SelectAddressController _controller = Get.find<SelectAddressController>();

  Future<void> addNewAddress() async {
    try {
      await apiClient.addNewUserAddress(
          addressFirstname: addressFirstname.text,
          addressLastname: addressLastname.text,
          addressCity: addressCity.text,
          addressFirst: addressFirst.text,
          addressSecond: addressSecond.text,
          countryId: int.parse(countryId.text),
          postCode: postCode.text,
          zone_id: int.parse(zoneId.text),
          addressCompany: addressCompany.text);
    } catch (e) {
      print("error in AddNewAddressController $e");
    }
    _controller.addresses.value = await apiClient.fetchUserAddresses();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    addressFirstname.dispose();
    addressLastname.dispose();
    addressCity.dispose();
    addressFirst.dispose();
    addressSecond.dispose();
    countryId.dispose();
    postCode.dispose();
    zoneId.dispose();
    addressCompany.dispose();
  }
}
