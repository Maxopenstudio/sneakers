import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/custom_icon_button.dart';

import '../models/product_model.dart';

// ignore: must_be_immutable
class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget(this.product);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        234,
      ),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            padding: getPadding(left: 16, top: 8, bottom: 8, right: 16),
            decoration: AppDecoration.fillGray100.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtHeadline,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              product.special == 0
                                  ? Container()
                                  : Padding(
                                padding: getPadding(top: 3, right: 6),
                                child: Text(
                                  product.specialFormated,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSFUITextRegular15Gray60001,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 3,
                                ),
                                child: Text(
                                  product.priceFormated,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSFUITextRegular15Black900,
                                ),
                              ),
                            ],
                          ),
                          CustomIconButton(
                            height: 24,
                            width: 24,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgFavorite,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: getVerticalSize(
              167,
            ),
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadiusStyle.roundedBorder8,
              child: CustomImageView(
                width: double.infinity,
                url: product.image ?? product.thumb,
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
