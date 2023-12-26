import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';

import '../../data/products_controller/products_controller.dart';
import 'controller/order_details_two_controller.dart';
import 'models/order_details_two_model.dart';

class OrderDetailsTwoScreen extends GetWidget<OrderDetailsTwoController> {
  final ProductsController productsController = Get.find();

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
          onTap: onTapArrowleft12,
        ),
        title: AppbarTitle(
          text: "lbl_order_details".tr,
          margin: getMargin(left: 16),
        ),
        styleType: Style.bgFillWhiteA700,
      ),
      body: Obx(() {
        OrderDetail orderDetail = controller.orderDetails.value;
        return SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  decoration: BoxDecoration(color: ColorConstant.whiteA700),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${"msg_order_id_65254524".tr}${orderDetail.orderId}",
                                  style: AppStyle.txtHeadline,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "${"msg_order_date_june".tr} ${DateFormat('MMMM dd, yyyy').format(orderDetail.timestamp)}",
                                  style: AppStyle.txtBodyGray600,
                                ),
                                SizedBox(height: 24),
                                ListView.separated(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: orderDetail.products.length,
                                  separatorBuilder: (context, index) =>
                                      SizedBox(height: 16),
                                  itemBuilder: (context, index) {
                                    Product product =
                                    orderDetail.products[index];
                                    String productImage = productsController
                                        .getProductById(
                                            int.parse(product.productId))
                                        .image!;
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              color: ColorConstant.gray100,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8,
                                              ),
                                              child: Container(
                                                height: getSize(90),
                                                width: getSize(90),
                                                child: CustomImageView(
                                                  url: productImage,
                                                  alignment: Alignment.center,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 16),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    product.name,
                                                    style: AppStyle.txtHeadline,
                                                  ),
                                                  SizedBox(height: 9),
                                                  Text(
                                                    product.price,
                                                    style: AppStyle
                                                        .txtBodyBlack900,
                                                  ),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    height: getVerticalSize(26),
                                                    width:
                                                        getHorizontalSize(99),
                                                    decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .gray300,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(8),
                                                      ),
                                                    ),
                                                    child: Text(
                                                      orderDetail.histories
                                                              .isNotEmpty
                                                          ? orderDetail
                                                              .histories
                                                              .first
                                                              .status
                                                          : '',
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .gray600,
                                                        fontSize:
                                                            getFontSize(15),
                                                        fontFamily:
                                                            'SF UI Text',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: getVerticalSize(
                                                            1.20),
                                                      ),
                                                      textAlign: TextAlign.left,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    margin: getMargin(top: 8),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "${"lbl_qty_12".tr} ${product.quantity}",
                                          style: AppStyle.txtBodyBlack900,
                                        ),
                                      ],
                                    );
                                  },
                                ),
                                Container(
                                    margin: getMargin(top: 24),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      height:
                                                          getVerticalSize(24),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        bottom:
                                                                            12,
                                                                        top:
                                                                            12),
                                                                    child: SizedBox(
                                                                        child: Divider(
                                                                            thickness:
                                                                                getVerticalSize(2),
                                                                            color: ColorConstant.gray300)))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Container(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    width:
                                                                        getSize(
                                                                            24),
                                                                    height:
                                                                        getSize(
                                                                            24),
                                                                    decoration: AppDecoration
                                                                        .txtFillGray10001
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .txtCircleBorder12),
                                                                    child: Text(
                                                                        "lbl_22"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style: AppStyle
                                                                            .txtSFUITextRegular15Gray60001))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child: Container(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    width:
                                                                        getSize(
                                                                            24),
                                                                    height:
                                                                        getSize(
                                                                            24),
                                                                    decoration: AppDecoration
                                                                        .txtFillGray10001
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .txtCircleBorder12),
                                                                    child: Text(
                                                                        "lbl_3"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtSFUITextRegular15Gray600))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child:
                                                                    Container(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  width:
                                                                      getSize(
                                                                          24),
                                                                  height:
                                                                      getSize(
                                                                          24),
                                                                  decoration: AppDecoration
                                                                      .txtFillGray10001
                                                                      .copyWith(
                                                                          borderRadius:
                                                                              BorderRadiusStyle.txtCircleBorder12),
                                                                  child: Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomCenter,
                                                                      child: Padding(
                                                                          padding: getPadding(
                                                                              bottom:
                                                                                  2),
                                                                          child: Text(
                                                                              "lbl_1".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtSFUITextRegular15Gray60001))),
                                                                ))
                                                          ]),
                                                      padding: getPadding(
                                                          left: 32, right: 41),
                                                    ),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 8),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              20),
                                                                  child: Text(
                                                                      "lbl_processing"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtSFUITextRegular15Gray600)),
                                                              Spacer(flex: 45),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(),
                                                                  child: Text(
                                                                      "lbl_shipped"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtSFUITextRegular15Gray600)),
                                                              Spacer(flex: 54),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          right:
                                                                              20),
                                                                  child: Text(
                                                                      "lbl_delivered"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtSFUITextRegular15Gray600))
                                                            ]))
                                                  ]))
                                        ])),
                                // Align(
                                //     alignment: Alignment.bottomCenter,
                                //     child: GestureDetector(
                                //       onTap: () {
                                //         Get.back();
                                //       },
                                //       child: Container(
                                //           margin: getMargin(
                                //               left: 20,
                                //               right: 20,
                                //               bottom: 16,
                                //               top: 24),
                                //           padding: getPadding(
                                //               left: 148,
                                //               top: 15,
                                //               right: 148,
                                //               bottom: 15),
                                //           decoration: AppDecoration
                                //               .outlineBlack9001
                                //               .copyWith(
                                //                   borderRadius:
                                //                       BorderRadiusStyle
                                //                           .roundedBorder8),
                                //           child: Column(
                                //               mainAxisSize: MainAxisSize.min,
                                //               mainAxisAlignment:
                                //                   MainAxisAlignment.start,
                                //               children: [
                                //                 Text("lbl_cancel_order".tr,
                                //                     overflow:
                                //                         TextOverflow.ellipsis,
                                //                     textAlign: TextAlign.left,
                                //                     style: AppStyle
                                //                         .txtSFUITextSemibold14)
                                //               ])),
                                //     )),
                              ],
                            ),
                          ),
                          Container(
                            height: 10,
                            decoration: BoxDecoration(
                              color: ColorConstant.gray100,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 20),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("msg_delivery_address".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtHeadline),
                                  Container(
                                      margin: getMargin(top: 8),
                                      child: Text(orderDetail.shippingAddress1,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtBody))
                                ]),
                          ),
                          Container(
                            height: 10,
                            decoration: BoxDecoration(
                              color: ColorConstant.gray100,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 20),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("lbl_order_summary".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtHeadline),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl_item_total".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtBodyBlack900),
                                          Text(orderDetail.totals.isNotEmpty ?
                                              "${orderDetail.currency.symbolLeft} ${controller.formatStringValue(orderDetail.totals.first.value)}" :"${"currency".tr} 0",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtBodyBlack900)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl_discount".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtBodyBlack900),
                                          Text(orderDetail.totals.isNotEmpty ? "${orderDetail.currency.symbolLeft} ${controller.formatStringValue(controller.discount!)}" :"${"currency".tr} 0",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtBodyBlack900)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl_delivery_free".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtBodyBlack900),
                                          Text(orderDetail.totals.isNotEmpty ?
                                              "${orderDetail.currency.symbolLeft} ${controller.formatStringValue(orderDetail.totals[1].value)}":"${"currency".tr} 0",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtBodyBlack900)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Divider(
                                        height: 0,
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.gray300)),
                                Padding(
                                  padding: getPadding(top: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_subtotal".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtHeadline),
                                      Text(orderDetail.totals.isNotEmpty ?
                                          "${orderDetail.currency.symbolLeft} ${controller.formatStringValue(orderDetail.totals.last.value)}" :"${"currency".tr} 0",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtBodyBlack900)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                )));
      }),
    ));
  }

  onTapArrowleft12() {
    Get.back();
  }
}
