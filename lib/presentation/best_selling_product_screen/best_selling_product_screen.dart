import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/best_selling_product_screen/controller/best_selling_product_controller.dart';
import 'package:shoes_app/presentation/home_screen_page/widgets/product_item_widget.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';

import '../filter_bottomsheet/controller/filter_controller.dart';
import '../filter_bottomsheet/filter_bottomsheet.dart';
import '../home_screen_page/controller/home_screen_controller.dart';
import '../home_screen_page/models/home_screen_model.dart';
import '../home_screen_page/models/product_model.dart';
import '../home_screen_page/widgets/homescreen_item_widget.dart';

// ignore: must_be_immutable
class BestSellingProductScreen extends GetWidget<BestSellingProductController> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        appBar: CustomAppBar(
            height: getVerticalSize(58),
            leadingWidth: 44,
            leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftBlack900, margin: getMargin(left: 20, top: 17, bottom: 17), onTap: onTapArrowleft1),
            title: AppbarTitle(text: "msg_best_selling_product".tr, margin: getMargin(left: 16)),
            actions: [
              GestureDetector(
                onTap: () {
                  Get.bottomSheet(
                    FilterBottomsheet(
                      Get.put(
                        FilterController(),
                      ),
                    ),
                    isScrollControlled: true,
                  );
                },
                child: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgSettings, margin: getMargin(left: 20, top: 17, right: 20, bottom: 17)),
              )
            ],
            styleType: Style.bgFillWhiteA700),
        body: Container(
          height: double.infinity,
          margin: getMargin(top: 11),
          width: double.maxFinite,
          decoration: BoxDecoration(color: ColorConstant.whiteA700),
          child: Padding(
            padding: getPadding(left: 20, top: 15, right: 20),
            child: Obx(
              () => GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: getVerticalSize(
                    246,
                  ),
                  crossAxisCount: 2,
                  mainAxisSpacing: getHorizontalSize(
                    16,
                  ),
                  crossAxisSpacing: getHorizontalSize(
                    16,
                  ),
                ),
                itemCount: controller.bestsellingProducts.length,
                itemBuilder: (context, index) {
                  ProductModel product = controller.bestsellingProducts[index];
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.productDetailScreen);
                    },
                    child: ProductItemWidget(
                      product
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  onTapArrowleft1() {
    Get.back();
  }
}
