// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';
import 'package:shoes_app/widgets/custom_button.dart';
import 'package:shoes_app/widgets/custom_text_form_field.dart';

import '../cart_screen/widgets/cart_item_widget.dart';
import '../home_screen_container_screen/controller/home_screen_container_controller.dart';
import 'controller/cart_controller.dart';
import 'models/cart_product_model.dart';

class CartScreen extends GetWidget<CartController> {
 // final ProductsController productsController = Get.find();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(58),
                leadingWidth: 44,
                leading: GetBuilder<HomeScreenContainerController>(
                  init: HomeScreenContainerController(),
                  builder: (controller) => AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgArrowleftBlack900,
                      margin: getMargin(left: 20, top: 17, bottom: 17),
                      onTap: () {
                        controller.change(0);
                      }),
                ),
                title: AppbarTitle(
                    text: "lbl_cart".tr,
                    margin: getMargin(left: 16, top: 16, bottom: 16)),
                styleType: Style.bgFillWhiteA700),
            body: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                    width: double.maxFinite,
                    padding: getPadding(top: 10),
                    child: ListView(
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Obx(() {
                                List<CartProductModel> cartProducts = controller.cartProducts.map((product) => controller.getProductByKey(int.parse(product.key))).toList();
                                print("on cart screen cartProducts - ${cartProducts.length}");
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(10));
                                    },
                                    itemCount:cartProducts.isNotEmpty ? cartProducts.length : 0,
                                    itemBuilder: (context, index) {
                                      CartProductModel model =
                                      cartProducts[index];
                                      return CartItemWidget(model);
                                    });
                              }),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(top: 10, bottom: 100),
                                      padding: getPadding(
                                        left: 20,
                                        top: 16,
                                        right: 20,
                                        bottom: 16,
                                      ),
                                      decoration: AppDecoration.white,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Obx(
                                              () {
                                                final errors = controller.errors.value;
                                                return CustomTextFormField(
                                                  // focusNode: FocusNode(),
                                                  controller:
                                                      controller.group169Controller,
                                                  hintText: "lbl_enter_coupon".tr,
                                                  margin: getMargin(bottom: 6),
                                                  textInputAction:
                                                      TextInputAction.done,
                                                  errorText:
                                                      errors,
                                                  suffix: CustomButton(
                                                      onTap: () {
                                                        controller.addCoupon();
                                                      },
                                                      margin: getMargin(
                                                          right: 8,
                                                          top: 1,
                                                          bottom: 1),
                                                      height: getVerticalSize(36),
                                                      width: getHorizontalSize(141),
                                                      text: "lbl_apply_coupon".tr,
                                                      padding:
                                                          ButtonPadding.PaddingAll6,
                                                      fontStyle: ButtonFontStyle
                                                          .SFUITextSemibold14WhiteA700),
                                                  suffixConstraints: BoxConstraints(
                                                    maxHeight: getVerticalSize(
                                                      36,
                                                    ),
                                                  ),
                                                );
                                              }
                                            ),
                                            Padding(
                                              padding: getPadding(top: 16),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text("lbl_item_total".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtBodyBlack900),
                                                    Text("lbl_43_00".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtBodyBlack900)
                                                  ]),
                                            ),
                                            Padding(
                                                padding: getPadding(top: 16),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("lbl_discount".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtBodyBlack900),
                                                      Text("lbl_2_00".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtBodyBlack900)
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 16),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                          "lbl_delivery_free"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtBodyBlack900),
                                                      Text("lbl_0_00".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtBodyBlack900)
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 16),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("lbl_subtotal".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtHeadline),
                                                      Text("lbl_41_00".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtBodyBlack900)
                                                    ]))
                                          ]))),
                            ]),
                      ],
                    )),
                CustomButton(
                    onTap: () {
                      Get.toNamed(AppRoutes.selectAddressScreen);
                    },
                    height: getVerticalSize(48),
                    text: "lbl_check_out".tr,
                    margin: getMargin(left: 20, bottom: 24, right: 20)),
              ],
            )));
  }

  onTapArrowleft3() {
    Get.back();
  }
}
