import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/home_screen_page/models/product_model.dart';
import 'package:shoes_app/widgets/custom_icon_button.dart';

import '../controller/home_screen_controller.dart';
import '../models/listname_item_model.dart';

// ignore: must_be_immutable
class ListnameItemWidget extends StatelessWidget {
  const ListnameItemWidget(this.product);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: getVerticalSize(
            209,
          ),
          width: getHorizontalSize(
            262,
          ),
          margin: getMargin(
            right: 17,
          ),
          child: ClipRRect(
            borderRadius: BorderRadiusStyle.roundedBorder8,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: CustomImageView(
                    url: product.image,
                    height: getVerticalSize(
                      208,
                    ),
                    width: getHorizontalSize(
                      263,
                    ),
                    alignment: Alignment.center,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    padding: getPadding(
                      all: 16,
                    ),
                    decoration: AppDecoration.fillGray100.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                      color: Colors.transparent,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                product.name,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtHeadline,
                              ),
                            ),
                            CustomIconButton(
                              height: 24,
                              width: 24,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgFavorite,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: getPadding(
                            top: 4,
                          ),
                          child: Column(
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
                                  style: product.special != 0 ? AppStyle.txtSFUITextRegular15Gray60001.copyWith(decoration: TextDecoration.lineThrough) : AppStyle.txtSFUITextRegular15Black900,
                                ),
                              ),
                              if (product.special != 0) ...[
                                Padding(
                                  padding: getPadding(top: 3, right: 6),
                                  child: Text(
                                    product.specialFormated,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtSFUITextRegular15Black900,
                                  ),
                                ),
                              ],
                            ],
                          )
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
