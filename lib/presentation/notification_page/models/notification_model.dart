import 'package:get/get.dart';

import 'notification_item_model.dart';

class NotificationModel {
  RxList<NotificationItemModel> notificationItemList =
      [NotificationItemModel("noti1.png", "Your profile picture updated successfully.", "3:20 PM"), NotificationItemModel("noti2.png", "Your password is two month old please update it.", "3:59 PM"), NotificationItemModel("noti3.png", "You have a are product update for nike airmax.", "4:00 PM"), NotificationItemModel("noti4.png", "Your nike airmax product delivered successfull", "2:06 PM")].obs;
}
