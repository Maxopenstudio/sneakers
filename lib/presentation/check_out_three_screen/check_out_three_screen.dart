import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/check_out_three_screen/models/check_out_three_model.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';
import 'package:shoes_app/widgets/custom_button.dart';
import '../order_details_two_screen/controller/order_details_two_controller.dart';
import 'controller/check_out_three_controller.dart';

class CheckOutThreeScreen extends GetWidget<CheckOutThreeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(58),
                leadingWidth: 44,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleftBlack900,
                    margin: getMargin(left: 20, top: 17, bottom: 17),
                    onTap: onTapArrowleft7),
                title: AppbarTitle(
                    text: "lbl_order_history".tr, margin: getMargin(left: 16)),
                styleType: Style.bgFillWhiteA700),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding: getPadding(top: 10, bottom: 10),
                  child: Obx(() {
                    List<Order> orders = controller.orders;
                    print("CheckOutThreeScreen ${orders.length}");
                    return ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: getVerticalSize(16));
                        },
                        itemCount: orders.length,
                        itemBuilder: (context, index) {
                          Order model = orders[index];
                          return Container(
                            padding: getPadding(
                                left: 20, top: 16, right: 20, bottom: 16),
                            decoration: AppDecoration.white,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                    "${"msg_order_id_65254524".tr}${model.orderId}",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtHeadline),
                                Padding(
                                    padding: getPadding(top: 8),
                                    child: Text(
                                        "${"msg_order_date_june".tr} ${DateFormat('MMMM d, y').format(model.timestamp)}",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBodyGray600)),
                                Padding(
                                  padding: getPadding(top: 24),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: CustomButton(
                                          height: getVerticalSize(48),
                                          text: "lbl_view_details".tr,
                                          margin: getMargin(right: 8),
                                          variant:
                                              ButtonVariant.OutlineBlack900,
                                          padding: ButtonPadding.PaddingAll15,
                                          fontStyle: ButtonFontStyle
                                              .SFUITextSemibold14,
                                          onTap:() async{
                                            await toOrderDetailsTwoScreen(int.parse(model.orderId));
                                          },

                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        });
                  })),
            )));
  }

  onTapArrowleft7() {
    Get.back();
  }
  Future<void> toOrderDetailsTwoScreen(int orderId) async {
    final OrderDetailsTwoController orderDetailsTwoController = Get.find<OrderDetailsTwoController>();
    orderDetailsTwoController.fetchOrderDetail(orderId);
  Get.toNamed(AppRoutes
      .orderDetailsTwoScreen);
}
}
