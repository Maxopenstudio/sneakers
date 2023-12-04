import 'package:get/get.dart';

import '../../home_screen_page/models/home_screen_model.dart';
import '../controller/best_selling_product_controller.dart';

class BestSellingProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BestSellingProductController(HomeScreenModel().obs));
  }
}
