import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/data/products_controller/products_controller.dart';
import 'package:shoes_app/presentation/best_selling_product_screen/controller/best_selling_product_controller.dart';
import 'package:shoes_app/presentation/home_screen_page/widgets/product_item_widget.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';

import '../filter_bottomsheet/controller/filter_controller.dart';
import '../filter_bottomsheet/filter_bottomsheet.dart';
import '../home_screen_page/models/product_model.dart';

// ignore: must_be_immutable
class FeaturedProductsScreen extends GetWidget<ProductsController> {

  final FilterController filterController = FilterController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        appBar: CustomAppBar(
            height: getVerticalSize(58),
            leadingWidth: 44,
            leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftBlack900, margin: getMargin(left: 20, top: 17, bottom: 17), onTap: onTapArrowleft1),
            title: AppbarTitle(text: "msg_featured_product".tr, margin: getMargin(left: 16)),
            actions: [
              GestureDetector(
                onTap: () {
                  Get.bottomSheet(
                    FilterBottomsheet(
                      Get.put(
                        filterController,
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
            child: StreamBuilder(stream: filterController.filterMode.stream, builder: (_,__) {
              List<ProductModel> featuredProducts = controller.featuredProducts.map((product) => controller.getProductById(product.productId)).toList();
              featuredProducts = ProductsController.filterProducts(featuredProducts, filterController.filterMode.value);
              return GridView.builder(
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
                itemCount: controller.featuredProducts.length,
                itemBuilder: (context, index) {
                  int bestSellingProductId = featuredProducts[index].productId;
                  ProductModel product = controller.getProductById(bestSellingProductId);
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.productDetailScreen, arguments: product);
                    },
                    child: ProductItemWidget(product),
                  );
                },
              );
            }),
          ),
        ),
      ),
    );
  }

  onTapArrowleft1() {
    Get.back();
  }
}
