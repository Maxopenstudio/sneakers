import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/custom_icon_button.dart';

import '../controller/my_favorite_controller.dart';
import '../models/myfavorite_item_model.dart';

// ignore: must_be_immutable
class MyfavoriteItemWidget extends StatelessWidget {
  MyfavoriteItemWidget(this.myfavoriteItemModelObj);

  MyfavoriteItemModel myfavoriteItemModelObj;

  var controller = Get.find<MyFavoriteController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        245,
      ),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: getMargin(
                bottom: 49,
              ),
              padding: getPadding(
                left: 16,
                top: 9,
                right: 16,
                bottom: 9,
              ),
              decoration: AppDecoration.fillGray100.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        myfavoriteItemModelObj.name,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtHeadline,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 3,
                        ),
                        child: Text(
                          myfavoriteItemModelObj.price,
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
                      svgPath: ImageConstant.imgFavoriteBlack900,
                    ),
                  ).paddingOnly(top: getSize(10)),
                ],
              ),
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
            radius: BorderRadius.circular(
              getHorizontalSize(
                20,
              ),
            ),
            alignment: Alignment.bottomLeft,
            margin: getMargin(
              left: 16,
              bottom: 48,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imagePath + myfavoriteItemModelObj.image,
            height: getVerticalSize(
              167,
            ),
            width: getHorizontalSize(
              163,
            ),
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}
