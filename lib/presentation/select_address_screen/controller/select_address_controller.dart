import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/select_address_screen/models/select_address_model.dart';

class SelectAddressController extends GetxController {
  Rx<SelectAddressModel> selectAddressModelObj = SelectAddressModel().obs;

  RxString radioGroup = "".obs;

  changeRadio(String value) {
    radioGroup.value = value;
    update();
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
