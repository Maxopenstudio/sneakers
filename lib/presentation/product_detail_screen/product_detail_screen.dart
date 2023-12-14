import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:html/parser.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/home_screen_container_screen/controller/home_screen_container_controller.dart';
import 'package:shoes_app/presentation/home_screen_page/models/product_model.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';
import 'package:shoes_app/widgets/custom_button.dart';
import 'package:shoes_app/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../data/products_controller/products_controller.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../product_detail_screen/widgets/sliderrectangleseventyseven_item_widget.dart';
import 'controller/product_detail_controller.dart';
import 'models/productdetail_item_model.dart';

class ProductDetailScreen extends GetWidget<ProductDetailController> {
  final ProductModel product = Get.arguments as ProductModel;
  final ProductsController productsController = Get.find();
  @override
  Widget build(BuildContext context) {
    final List<String> images = [product.image!, ...?product.images];

    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(49),
                leadingWidth: 44,
                leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleftBlack900, margin: getMargin(left: 20, top: 17, bottom: 8), onTap: onTapArrowleft2),
                actions: [Obx(() => AppbarImage(height: getSize(24), width: getSize(24), svgPath: productsController.isProductInFavorites(product.productId) ? ImageConstant.imgFavoriteBlack900 : ImageConstant.imgContrastWhiteA700, margin: getMargin(left: 20, right: 20, top: 17, bottom: 8), onTap:favorite,))]),
            body: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox(
                    width: size.width,
                    child: SingleChildScrollView(
                        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Container(
                          width: double.infinity,
                          decoration: AppDecoration.white,
                          padding: getPadding(bottom: 14),
                          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                            CarouselSlider.builder(
                                options: CarouselOptions(
                                    height: getVerticalSize(400),
                                    initialPage: 0,
                                    viewportFraction: 1.0,
                                    enableInfiniteScroll: false,
                                    scrollDirection: Axis.horizontal,
                                    onPageChanged: (index, reason) {
                                      controller.silderIndex.value = index;
                                    }),
                                itemCount: images.length,
                                itemBuilder: (context, index, realIndex) {
                                  return SliderrectangleseventysevenItemWidget(images[index]);
                                }),
                            Obx(() => Container(
                                height: getVerticalSize(8), margin: getMargin(top: 16), child: AnimatedSmoothIndicator(activeIndex: controller.silderIndex.value, count: images.length, axisDirection: Axis.horizontal, effect: ScrollingDotsEffect(spacing: 8, activeDotColor: ColorConstant.black900, dotColor: ColorConstant.gray300, dotHeight: getVerticalSize(8), dotWidth: getVerticalSize(8)))))
                          ])),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 10),
                              padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                              decoration: AppDecoration.white,
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                Padding(
                                    padding: getPadding(top: 2),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, children: [
                                      Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                        Row(children: [
                                          RatingBar(
                                            ignoreGestures: true,
                                            initialRating: 4,
                                            direction: Axis.horizontal,
                                            allowHalfRating: false,
                                            itemCount: 5,
                                            itemSize: getSize(15),
                                            ratingWidget: RatingWidget(
                                              full: CustomImageView(svgPath: ImageConstant.imgStarAmber600, height: getSize(15), width: getSize(15), margin: getMargin(top: 1, bottom: 1)),
                                              half: CustomImageView(svgPath: ImageConstant.imgStarAmber600, height: getSize(15), width: getSize(15), margin: getMargin(top: 1, bottom: 1)),
                                              empty: CustomImageView(svgPath: ImageConstant.imgVuesaxlinearstar, height: getSize(15), width: getSize(15), margin: getMargin(top: 1, bottom: 1)),
                                            ),
                                            onRatingUpdate: (double value) {},
                                          ),
                                          Padding(padding: getPadding(left: 8), child: Text("lbl_4_0".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black900))
                                        ]),
                                        Padding(padding: getPadding(top: 8), child: Text(product.name, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextSemibold27)),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 3,
                                              ),
                                              child: Text(
                                                product.priceFormated,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: product.special != 0 ? AppStyle.txtBodyGray600.copyWith(decoration: TextDecoration.lineThrough) : AppStyle.txtBodyBlack900.copyWith(fontSize: 20),
                                              ),
                                            ),
                                            if (product.special != 0) ...[
                                              Padding(
                                                padding: getPadding(top: 3, right: 6),
                                                child: Text(
                                                  product.specialFormated,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtBodyBlack900.copyWith(fontSize: 20),
                                                ),
                                              ),
                                            ],
                                          ],
                                        )
                                      ]),
                                    ])),
                                if (product.description.isNotEmpty) ...[
                                  Container(
                                      margin: getMargin(top: 16),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(text: parse(product.description).documentElement?.text, style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(17), fontFamily: 'SF UI Text', fontWeight: FontWeight.w400)),
                                          ]),
                                          textAlign: TextAlign.left)),
                                ],
                                Padding(
                                    padding: getPadding(top: 24, right: 45),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                      /*
                                      Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                        Text("lbl_colors".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline),
                                        GetBuilder<ProductDetailController>(
                                          init: ProductDetailController(),
                                          builder: (controller) => Container(
                                            margin: getMargin(top: 16),
                                            height: getVerticalSize(32),
                                            child: ListView.separated(
                                                scrollDirection: Axis.horizontal,
                                                primary: false,
                                                shrinkWrap: true,
                                                itemBuilder: (context, index) {
                                                  Color color = controller.productDetailModelObj.value.colorList[index];
                                                  return GestureDetector(
                                                    onTap: () {
                                                      controller.changeColorIndex(index);
                                                    },
                                                    child: Container(
                                                      height: getVerticalSize(32),
                                                      width: getVerticalSize(32),
                                                      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(getVerticalSize(32) / 2)),
                                                      child: controller.colorIndex.value == index
                                                          ? CustomImageView(
                                                              svgPath: ImageConstant.imagePath + "check.svg",
                                                              margin: getMargin(all: 10),
                                                            )
                                                          : SizedBox(),
                                                    ),
                                                  );
                                                },
                                                separatorBuilder: (context, index) {
                                                  return SizedBox(width: getVerticalSize(8));
                                                },
                                                itemCount: controller.productDetailModelObj.value.colorList.length),
                                          ),
                                        )
                                      ]),
                                       */
                                      Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                        Text("lbl_quantity".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline),
                                        GetBuilder<ProductDetailController>(
                                          init: ProductDetailController(),
                                          builder: (controller) => Padding(
                                              padding: getPadding(top: 16),
                                              child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                                CustomIconButton(
                                                    onTap: () {
                                                      controller.removeQuantity();
                                                    },
                                                    height: 32,
                                                    width: 32,
                                                    variant: IconButtonVariant.FillBluegray50,
                                                    shape: IconButtonShape.RoundedBorder8,
                                                    child: CustomImageView(svgPath: ImageConstant.imgMenu)),
                                                Padding(padding: getPadding(left: 16, right: 16), child: Text(controller.quantity.toString(), overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)),
                                                CustomIconButton(
                                                    onTap: () {
                                                      controller.addQuantity();
                                                    },
                                                    height: 32,
                                                    width: 32,
                                                    margin: getMargin(left: 15),
                                                    variant: IconButtonVariant.FillBluegray50,
                                                    shape: IconButtonShape.RoundedBorder8,
                                                    child: CustomImageView(svgPath: ImageConstant.imgPlus))
                                              ])),
                                        )
                                      ])
                                    ])),
                                Padding(padding: getPadding(top: 24), child: Text("lbl_size".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline)),
                                GetBuilder<ProductDetailController>(
                                  init: ProductDetailController(),
                                  initState: (controller) {

                                  },
                                  builder: (controller) => Container(
                                    margin: getMargin(top: 16),
                                    height: getSize(40),
                                    child: ListView.separated(
                                        scrollDirection: Axis.horizontal,
                                        primary: false,
                                        shrinkWrap: true,
                                        itemBuilder: (context, index) {
                                          String size = product.options!.first.optionValue[index].name;
                                          return GestureDetector(
                                            onTap: () {
                                              controller.changeSizeIndex(index);
                                            },
                                            child: Container(
                                                alignment: Alignment.center,
                                                width: getSize(40),
                                                decoration: controller.sizeIndex.value == index ? AppDecoration.txtFillBlack900.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder8) : AppDecoration.txtFillBluegray50.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder8),
                                                child: Text(size, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: controller.sizeIndex.value == index ? AppStyle.txtBodyWhiteA700 : AppStyle.txtBodyBlack900)),
                                          );
                                        },
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                            width: getVerticalSize(16),
                                          );
                                        },
                                        itemCount: product.options!.first.optionValue.length),
                                  ),
                                ),
                                /*
                                Padding(
                                    padding: getPadding(top: 24),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_reviews".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline), Padding(padding: getPadding(top: 2), child: Text("lbl_see_all_reviews".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black900))])),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Obx(() => ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(height: getVerticalSize(17));
                                        },
                                        itemCount: controller.productDetailModelObj.value.productdetailItemList.length,
                                        itemBuilder: (context, index) {
                                          ProductdetailItemModel model = controller.productDetailModelObj.value.productdetailItemList[index];
                                          return ProductdetailItemWidget(model);
                                        }))),
                                 */
                                Container(
                                  padding: getPadding(bottom: 104),
                                )
                              ])))
                    ]))),
                GetBuilder<HomeScreenContainerController>(
                  init: HomeScreenContainerController(),
                  builder: (controller) => CustomButton(
                      onTap: () {
                        controller.change(2);
                        Get.toNamed(AppRoutes.homeScreenContainerScreen);
                      },
                      height: getVerticalSize(48),
                      text: "lbl_add_to_cart".tr,
                      margin: getMargin(bottom: 24, right: 20, left: 20)),
                ),
              ],
            )));
  }

  onTapArrowleft2() {
    Get.back();
  }
  Future<void>favorite() async {
  await productsController.addOrDeleteFavoriteProduct(product.productId);
  productsController.favoriteProducts.value =  (await productsController.apiClient.getFavoriteProducts()).map((product) => productsController.getProductById(product)).toList();

  print("ProductDetailScreen add/rem favorite");
}

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Folder:
        return AppRoutes.homeScreenPage;
      case BottomBarEnum.Category:
        return AppRoutes.categoriesScreen;
      case BottomBarEnum.Lock:
        return AppRoutes.cartScreen;
      case BottomBarEnum.Favoritegray600:
        return AppRoutes.myFavoritePage;
      case BottomBarEnum.User:
        return AppRoutes.myProfilePage;
      default:
        return "/";
    }
  }
}
