import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/filter_bottomsheet/models/filter_model.dart';

enum FilterMode {none, newAdded, priceHigh, priceLow}

class FilterController extends GetxController {
  Rx<FilterMode> filterMode = FilterMode.none.obs;

  void filterBy(FilterMode filterMode) {
    if (filterMode == this.filterMode.value) {
      this.filterMode.value = FilterMode.none;
      return;
    }
    this.filterMode.value = filterMode;
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
