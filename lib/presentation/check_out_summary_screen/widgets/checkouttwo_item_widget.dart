import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/cart_screen/models/cart_product_model.dart';
import 'package:shoes_app/presentation/check_out_summary_screen/controller/check_out_summary_controller.dart';

import '../models/checkouttwo_item_model.dart';

// ignore: must_be_immutable
class CheckouttwoItemWidget extends StatelessWidget {
  CheckouttwoItemWidget(this.cartProductModel);

  CartProductModel cartProductModel;

  var controller = Get.find<CheckOutSummaryController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: ColorConstant.gray100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Container(
            height: getSize(
              90,
            ),
            width: getSize(
              90,
            ),
            padding: getPadding(
              left: 5,
              top: 4,
              right: 5,
              bottom: 4,
            ),
            decoration: AppDecoration.fillGray100.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: CustomImageView(
              url: cartProductModel.thumb,
              height: getVerticalSize(
                82,
              ),
              width: getHorizontalSize(
                80,
              ),
              alignment: Alignment.center,
            ),
          ),
        ),
        Container(
          margin: getMargin(
            left: 16,
            top: 4,
            bottom: 3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                cartProductModel.name,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtHeadline,
              ),
              Padding(
                padding: getPadding(
                  top: 9,
                ),
                child: Text(
                  cartProductModel.price,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtBodyBlack900,
                ),
              ),
              if(cartProductModel.options.isNotEmpty)Padding(
                padding: getPadding(
                  top: 6,
                ),
                child: Text(
                  "${cartProductModel.options.first.name??''} : ${cartProductModel.options.first.value??''}",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSFUITextRegular15Black900,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 9,
                ),
                child: Text(
                  "${"lbl_qty_12".tr} ${cartProductModel.quantity}",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtBodyGray600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
