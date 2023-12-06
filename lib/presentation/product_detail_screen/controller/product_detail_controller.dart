import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/product_detail_screen/models/product_detail_model.dart';

class ProductDetailController extends GetxController {
  //Rx<ProductDetailModel> productDetailModelObj = ProductDetailModel().obs;

  Rx<int> silderIndex = 0.obs;

  Rx<int> colorIndex = 0.obs;

  Rx<int> sizeIndex = 0.obs;

  int quantity = 1;

  addQuantity() {
    quantity = quantity + 1;
    update();
  }

  removeQuantity() {
    if (quantity != 1) {
      quantity = quantity - 1;
      update();
    }
  }

  changeSizeIndex(int value) {
    sizeIndex.value = value;
    update();
  }

  changeColorIndex(int value) {
    colorIndex.value = value;
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
