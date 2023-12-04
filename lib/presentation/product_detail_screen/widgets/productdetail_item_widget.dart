import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoes_app/core/app_export.dart';

import '../controller/product_detail_controller.dart';
import '../models/productdetail_item_model.dart';

// ignore: must_be_immutable
class ProductdetailItemWidget extends StatelessWidget {
  ProductdetailItemWidget(this.productdetailItemModelObj);

  ProductdetailItemModel productdetailItemModelObj;

  var controller = Get.find<ProductDetailController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse152,
                height: getSize(
                  40,
                ),
                width: getSize(
                  40,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    20,
                  ),
                ),
                margin: getMargin(right: 16),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "lbl_john_abram".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtBodyBlack900,
                          ),
                        ),
                        Text(
                          "lbl_1_days_to_go".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSFUITextRegular15Gray600,
                        ),
                      ],
                    ),
                    Padding(
                      padding: getPadding(
                        top: 1,
                      ),
                      child: Row(
                        children: [
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
                          Padding(
                            padding: getPadding(
                              left: 8,
                            ),
                            child: Text(
                              "lbl_4_0".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSFUITextRegular15Black900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: getMargin(
              top: 16,
              right: 22,
            ),
            child: Text(
              "msg_qorem_ipsum_dolor".tr,
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtSFUITextRegular15,
            ),
          ),
        ],
      ),
    );
  }
}
