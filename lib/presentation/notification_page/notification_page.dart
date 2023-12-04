import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';

import '../notification_page/widgets/notification_item_widget.dart';
import 'controller/notification_controller.dart';
import 'models/notification_item_model.dart';
import 'models/notification_model.dart';

// ignore_for_file: must_be_immutable
class NotificationPage extends StatelessWidget {
  NotificationController controller = Get.put(NotificationController(NotificationModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(height: getVerticalSize(58), leadingWidth: 44, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftBlack900, margin: getMargin(left: 20, top: 17, bottom: 17), onTap: onTapArrowleft16), title: AppbarTitle(text: "lbl_notifications".tr, margin: getMargin(left: 16)), styleType: Style.bgFillWhiteA700),
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray100,
                child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Padding(
                      padding: getPadding(top: 10),
                      child: Obx(() => ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(10));
                          },
                          itemCount: controller.notificationModelObj.value.notificationItemList.length,
                          itemBuilder: (context, index) {
                            NotificationItemModel model = controller.notificationModelObj.value.notificationItemList[index];
                            return NotificationItemWidget(model);
                          }))),
                  Spacer()
                ]))));
  }

  onTapArrowleft16() {
    Get.back();
  }
}
