import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/custom_icon_button.dart';

import '../controller/home_screen_controller.dart';
import '../models/product_model.dart';

// ignore: must_be_immutable
class HomescreenItemWidget extends StatelessWidget {
  HomescreenItemWidget(this.homescreenItemModelObj);

  ProductModel homescreenItemModelObj;

  var controller = Get.find<HomeScreenController>();

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
            margin: getMargin(
              bottom: 49,
            ),
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
                        homescreenItemModelObj.name,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtHeadline,
                      ),
                      Row(
                        children: [
                          homescreenItemModelObj.special == 0
                              ? Container()
                              : Padding(
                                  padding: getPadding(top: 3, right: 6),
                                  child: Text(
                                    homescreenItemModelObj.specialFormated,
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
                              homescreenItemModelObj.priceFormated,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSFUITextRegular15Black900,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(top: 10),
                  child: CustomIconButton(
                    height: 24,
                    width: 24,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgFavorite,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            svgPath: ImageConstant.imgRectangle77,
            height: getSize(
              131,
            ),
            width: getSize(
              131,
            ),
            alignment: Alignment.bottomLeft,
            margin: getMargin(
              left: 16,
              bottom: 48,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imagePath,
            height: getVerticalSize(
              167,
            ),
            width: getHorizontalSize(
              163,
            ),
            alignment: Alignment.bottomCenter,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
