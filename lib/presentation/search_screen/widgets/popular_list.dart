import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:shoes_app/presentation/home_screen_page/models/product_model.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../routes/app_routes.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/popular_product.dart';

class PopularList extends StatelessWidget {
  const PopularList({Key? key, required this.list}) : super(key: key);
  final RxList<PopularProduct> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return PopularProductItem(product: list[index]);
      },
    );
  }
}

class PopularProductItem extends StatelessWidget {
  const PopularProductItem({Key? key, required this.product}) : super(key: key);
  final PopularProduct product;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        margin: getMargin(top: 10),
        padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
        decoration: AppDecoration.white,
        child: Row(children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: ColorConstant.gray100,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Container(
              height: getSize(90),
              width: getSize(90),
              padding: getPadding(left: 7, top: 5, right: 7, bottom: 5),
              decoration: AppDecoration.fillGray100
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Stack(
                children: [
                  CustomImageView(
                      url: product.thumb,
                      height: getVerticalSize(79),
                      width: getHorizontalSize(76),
                      alignment: Alignment.center)
                ],
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(160),
            margin: getMargin(left: 16, top: 21, bottom: 21),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(product.name,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtHeadline),
                Padding(
                    padding: getPadding(top: 5),
                    child: Text(product.priceFormatted,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBodyBlack900))
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
              svgPath: ImageConstant.imgStar,
              height: getSize(15),
              width: getSize(15),
              margin: getMargin(top: 38, right: 16, bottom: 37))
        ]));
  }
}

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({Key? key, required this.product}) : super(key: key);
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Get.toNamed(
          AppRoutes
              .productDetailScreen,
          arguments: product),
      child: Container(
          width: double.maxFinite,
          margin: getMargin(top: 10),
          padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
          decoration: AppDecoration.white,
          child: Row(children: [
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: ColorConstant.gray100,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Container(
                height: getSize(90),
                width: getSize(90),
                padding: getPadding(left: 7, top: 5, right: 7, bottom: 5),
                decoration: AppDecoration.fillGray100
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                child: Stack(
                  children: [
                    CustomImageView(
                        url: product.image,
                        height: getVerticalSize(79),
                        width: getHorizontalSize(76),
                        alignment: Alignment.center)
                  ],
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(160),
              margin: getMargin(left: 16, top: 21, bottom: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(product.name,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtHeadline),
                  Padding(
                      padding: getPadding(top: 5),
                      child: Text(product.priceFormated,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtBodyBlack900))
                ],
              ),
            ),
            Spacer(),
            CustomImageView(
                svgPath: ImageConstant.imgStar,
                height: getSize(15),
                width: getSize(15),
                margin: getMargin(top: 38, right: 16, bottom: 37))
          ])),
    );
  }
}
