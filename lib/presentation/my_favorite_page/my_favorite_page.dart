import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/home_screen_page/models/product_model.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';
import '../../data/products_controller/products_controller.dart';
import '../home_screen_page/widgets/product_item_widget.dart';


class MyFavoritePage extends GetWidget<ProductsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(58),
                leadingWidth: 44,
                title: AppbarTitle(
                    text: "lbl_my_favorites".tr, margin: getMargin(left: 16)),
                styleType: Style.bgFillWhiteA700),
            body: SizedBox.expand(
              child: Container(
                  margin: getMargin(top: 11),
                  width: double.maxFinite,
                  decoration: BoxDecoration(color: ColorConstant.whiteA700),
                  child: Obx(() {
                          List<ProductModel> favoriteProducts = controller.favoriteProducts.map((favorite) => controller.getProductById(favorite.productId)).toList();
                              return GridView.builder(
                                  padding: getPadding(left: 20, top: 15, right: 20, bottom: 30),
                                  shrinkWrap: true,
                                  gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
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
                                  itemCount: controller
                                      .favoriteProducts
                                      .isEmpty
                                      ? 0
                                      : controller
                                      .favoriteProducts
                                      .length,
                                  itemBuilder:
                                      (context, index) {
                                    print(
                                        "ObxBuilder - on MyFavoritePage");
                                    int favoriteProductId =
                                        favoriteProducts[index]
                                            .productId;
                                    ProductModel product =
                                    controller.getProductById(
                                        favoriteProductId);
                                    print(
                                        "favoriteProducts.length = ${favoriteProducts.length}");
                                    return GestureDetector(
                                      onTap: () {
                                        Get.toNamed(
                                            AppRoutes
                                                .productDetailScreen,
                                            arguments: product);
                                      },
                                      child: ProductItemWidget(
                                        product,
                                      ),
                                    );
                                  });
                            }),
                      ),
            )));
  }

  onTapArrowleft13() {
    Get.back();
  }
}