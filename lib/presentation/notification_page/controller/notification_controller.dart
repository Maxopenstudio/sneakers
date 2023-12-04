import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/notification_page/models/notification_model.dart';

class NotificationController extends GetxController {
  NotificationController(this.notificationModelObj);

  Rx<NotificationModel> notificationModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
