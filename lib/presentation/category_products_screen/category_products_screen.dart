import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/data/products_controller/products_controller.dart';
import 'package:shoes_app/presentation/categories_screen/models/categories_item_model.dart';
import 'package:shoes_app/presentation/category_products_screen/controller/category_products_controller.dart';
import 'package:shoes_app/presentation/home_screen_page/widgets/product_item_widget.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';

import '../filter_bottomsheet/controller/filter_controller.dart';
import '../filter_bottomsheet/filter_bottomsheet.dart';
import '../home_screen_page/controller/home_screen_controller.dart';
import '../home_screen_page/models/product_model.dart';
import '../home_screen_page/widgets/homescreen_item_widget.dart';

// ignore: must_be_immutable
class CategoryProductsScreen extends GetWidget<CategoryProductsController> {

  final CategoriesItemModel selectedCategory = Get.arguments as CategoriesItemModel;
  final ProductsController productsController = Get.find<ProductsController>();

  @override
  Widget build(BuildContext context) {
    final List<ProductModel> categoryProducts = productsController.getProductsByCategory(selectedCategory.categoryId);
    print("FINDED PRODUCTS: ${categoryProducts.length}");
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        appBar: CustomAppBar(
            height: getVerticalSize(58),
            leadingWidth: 44,
            leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftBlack900, margin: getMargin(left: 20, top: 17, bottom: 17), onTap: onTapArrowleft1),
            title: AppbarTitle(text: selectedCategory.name, margin: getMargin(left: 16)),
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
        body: SizedBox.expand(
          child: Container(
            margin: getMargin(top: 11),
            width: double.maxFinite,
            decoration: BoxDecoration(color: ColorConstant.whiteA700),
            child: GridView.builder(
              padding: getPadding(left: 20, top: 15, right: 20, bottom: 30),
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
              itemCount: categoryProducts.length,
              itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.productDetailScreen, arguments: categoryProducts[index]);
                    },
                    child: ProductItemWidget(
                      categoryProducts[index],
                    ),
                  );
              },
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
