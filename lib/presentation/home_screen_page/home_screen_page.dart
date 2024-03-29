import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/data/products_controller/products_controller.dart';
import 'package:shoes_app/presentation/best_selling_product_screen/controller/best_selling_product_controller.dart';
import 'package:shoes_app/presentation/home_screen_container_screen/controller/home_screen_container_controller.dart';
import 'package:shoes_app/presentation/home_screen_page/widgets/product_item_widget.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';
import 'package:shoes_app/widgets/custom_text_form_field.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../home_screen_page/widgets/listname_item_widget.dart';
import '../home_screen_page/widgets/listwalkingfitness_item_widget.dart';
import '../home_screen_page/widgets/sliderlovelysportco_item_widget.dart';
import 'controller/home_screen_controller.dart';
import 'models/listname_item_model.dart';
import 'models/listwalkingfitness_item_model.dart';
import 'models/product_model.dart';

// ignore_for_file: must_be_immutable
class HomeScreenPage extends StatelessWidget {
  HomeScreenContainerController homeScreenContainerController = Get.put(HomeScreenContainerController());
  ProductsController productsController = Get.find<ProductsController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            72,
          ),
          leadingWidth: 44,
          leading: AppbarImage(
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            svgPath: ImageConstant.imgAirplane,
            margin: getMargin(left: 20, bottom: 32, top: 16),
          ),
          title: AppbarImage(
            height: getVerticalSize(
              18,
            ),
            width: getHorizontalSize(
              65,
            ),
            svgPath: ImageConstant.imgSignal,
            margin: getMargin(left: 8, top: 19, bottom: 35),
          ),
        ),
        body: GetBuilder<HomeScreenController>(builder: (controller) {
          return SizedBox(
            width: size.width,
            child: SingleChildScrollView(
              child: Padding(
                padding: getPadding(
                  bottom: 5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Get.toNamed(AppRoutes.searchScreen);
                      },
                      child: CustomTextFormField(
                        enabled:false,
                        hintText: "msg_search_for_shoes".tr,
                        margin: getMargin(
                          right: 20,
                          left: 20,
                        ),
                        padding: TextFormFieldPadding.PaddingT13_2,
                        prefix: Container(
                          margin: getMargin(
                            left: 16,
                            top: 12,
                            right: 16,
                            bottom: 12,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgContrast,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: getVerticalSize(
                            48,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 24,
                      ),
                      child: CarouselSlider.builder(
                        options: CarouselOptions(
                          height: getVerticalSize(
                            140,
                          ),
                          autoPlay: true,
                          initialPage: 0,
                          viewportFraction: 0.8,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index, reason) {
                            controller.onChangeIndex(index);
                          },
                        ),
                        itemCount: controller.slideShow.value.banners.length,
                        itemBuilder: (context, index, realIndex) {
                          return SliderlovelysportcoItemWidget(controller.slideShow.value.banners[index].image);
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: getPadding(
                          right: 20,
                          left: 20,
                        ),
                        child: Container(
                          height: getVerticalSize(
                            8,
                          ),
                          margin: getMargin(
                            top: 8,
                          ),
                          child: AnimatedSmoothIndicator(
                            activeIndex: controller.slideShow.value.banners.length,
                            count: controller.homeScreenModelObj.value.sliderlovelysportcoItemList.length,
                            axisDirection: Axis.horizontal,
                            effect: ScrollingDotsEffect(
                              spacing: 8,
                              activeDotColor: ColorConstant.black900,
                              dotColor: ColorConstant.gray300,
                              dotHeight: getVerticalSize(
                                8,
                              ),
                              dotWidth: getVerticalSize(
                                8,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getVerticalSize(24),
                    ),
                    Container(
                      padding: getPadding(
                        left: 20,
                      ),
                      height: getVerticalSize(40),
                      child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: getVerticalSize(24),
                          );
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.homeScreenModelObj.value.categoryList.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              controller.setCategory(index);
                              homeScreenContainerController.change(1);
                            },
                            child: Container(
                              height: getVerticalSize(40),
                              alignment: Alignment.center,
                              padding: getPadding(
                                left: 24,
                                right: 24,
                              ),
                              // ignore: unrelated_type_equality_checks
                              decoration: controller.categoryIndex == index
                                  ? AppDecoration.txtBlack.copyWith(
                                      borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                                    )
                                  : AppDecoration.txtWhite.copyWith(
                                      borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                                    ),
                              child: Text(
                                controller.homeScreenModelObj.value.categoryList[index].name,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                // ignore: unrelated_type_equality_checks
                                style: controller.categoryIndex == index ? AppStyle.txtBodyWhiteA700 : AppStyle.txtBodyBlack900,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 15,
                        right: 20,
                        left: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "msg_best_selling_product".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSFUITextSemibold19,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 2,
                              bottom: 2,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed(AppRoutes.bestSellingProductScreen);
                              },
                              child: Text(
                                "lbl_view_all".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtSFUITextRegular15Black900,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 13,
                        right: 20,
                        left: 20,
                      ),
                      child: GetBuilder<BestSellingProductController>(builder: (bestsellersController) {
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
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: min(bestsellersController.bestsellingProducts.length, 4),
                          itemBuilder: (context, index) {
                            int bestSellingProductId = bestsellersController.bestsellingProducts.value[index].productId;
                            ProductModel product = productsController.getProductById(bestSellingProductId);
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
                    Padding(
                      padding: getPadding(
                        top: 24,
                        right: 20,
                        left: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "msg_featured_product".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSFUITextSemibold19,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 3,
                              bottom: 1,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed(AppRoutes.featuredProductsScreen);
                              },
                              child: Text(
                                "lbl_view_all".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtSFUITextRegular15Black900,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: getVerticalSize(
                          225,
                        ),
                        child: StreamBuilder(stream: productsController.featuredProducts.stream, builder: (_,__) {
                          return ListView.separated(
                            padding: getPadding(
                              top: 16,
                              left: 20,
                              bottom: 16,
                            ),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: getVerticalSize(
                                  18,
                                ),
                              );
                            },
                            itemCount: productsController.featuredProducts.length,
                            itemBuilder: (context, index) {
                              int featuredProduct = productsController.featuredProducts.value[index].productId;
                              ProductModel product = productsController.getProductById(featuredProduct);
                              return GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoutes.productDetailScreen, arguments: product);
                                },
                                child: ListnameItemWidget(
                                  product,
                                ),
                              );
                            },
                          );
                        }),
                      ),
                    ),
                    /*
                    Padding(
                      padding: getPadding(
                        top: 24,
                        right: 20,
                        left: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "lbl_blog".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSFUITextSemibold19,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 2,
                              bottom: 2,
                            ),
                            child: Text(
                              "lbl_view_all".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSFUITextRegular15Black900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: getVerticalSize(
                          263,
                        ),
                        child: Obx(
                          () => ListView.separated(
                            padding: getPadding(
                              top: 16,
                              left: 20,
                            ),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: getVerticalSize(
                                  16,
                                ),
                              );
                            },
                            itemCount: controller.homeScreenModelObj.value.listwalkingfitnessItemList.length,
                            itemBuilder: (context, index) {
                              ListwalkingfitnessItemModel model = controller.homeScreenModelObj.value.listwalkingfitnessItemList[index];
                              return GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoutes.blogDetailScreen);
                                },
                                child: ListwalkingfitnessItemWidget(
                                  model,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                     */
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
