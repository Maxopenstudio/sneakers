import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/filter_bottomsheet/models/filter_model.dart';

class FilterController extends GetxController {
  Rx<FilterModel> filterModelObj = FilterModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
