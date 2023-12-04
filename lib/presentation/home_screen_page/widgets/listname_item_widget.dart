import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/custom_icon_button.dart';

import '../controller/home_screen_controller.dart';
import '../models/listname_item_model.dart';

// ignore: must_be_immutable
class ListnameItemWidget extends StatelessWidget {
  ListnameItemWidget(this.listnameItemModelObj);

  ListnameItemModel listnameItemModelObj;

  var controller = Get.find<HomeScreenController>();

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
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
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
                              listnameItemModelObj.name,
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
                        child: Text(
                          listnameItemModelObj.price,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSFUITextRegular15Black900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgRectangle77,
                height: getSize(
                  159,
                ),
                width: getSize(
                  159,
                ),
                alignment: Alignment.bottomCenter,
              ),
              Align(
                alignment: Alignment.center,
                child: CustomImageView(
                  imagePath: ImageConstant.imagePath + listnameItemModelObj.image,
                  height: getVerticalSize(
                    208,
                  ),
                  width: getHorizontalSize(
                    263,
                  ),
                  alignment: Alignment.center,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
