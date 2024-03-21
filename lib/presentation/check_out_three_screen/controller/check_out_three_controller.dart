import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/check_out_three_screen/models/check_out_three_model.dart';

import '../../../data/apiClient/api_client.dart';

class CheckOutThreeController extends GetxController {
  CheckOutThreeController(this.apiClient);

  final ApiClient apiClient;
  RxList<Order> orders = List<Order>.empty().obs;

  Future<void> updateOrders() async {
    orders = (await apiClient.fetchCustomerOrders()).obs;
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
