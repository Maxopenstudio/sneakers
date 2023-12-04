import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/cart_screen/models/cart_model.dart';
import 'package:shoes_app/widgets/custom_icon_button.dart';

import '../controller/cart_controller.dart';
import '../models/cart_item_model.dart';

// ignore: must_be_immutable
class CartItemWidget extends StatelessWidget {
  CartItemWidget(this.cartItemModelObj, this.index);

  CartItemModel cartItemModelObj;
  int index;

  var controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: getPadding(
        left: 20,
        top: 16,
        right: 20,
        bottom: 16,
      ),
      decoration: AppDecoration.white,
      child: Row(
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
                left: 7,
                top: 5,
                right: 7,
                bottom: 5,
              ),
              decoration: AppDecoration.fillGray100.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imagePath + cartItemModelObj.image,
                    height: getVerticalSize(
                      79,
                    ),
                    width: getHorizontalSize(
                      76,
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: getMargin(
              left: 16,
              top: 8,
              bottom: 8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  cartItemModelObj.name,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtHeadline,
                ),
                Padding(
                  padding: getPadding(
                    top: 4,
                  ),
                  child: Text(
                    cartItemModelObj.price,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtBodyBlack900,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                  ),
                  child: Text(
                    "Color : ${cartItemModelObj.color}",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFUITextRegular15Black900,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: getMargin(top: 50, right: 8, bottom: 8),
            child: GetBuilder<CartController>(
              init: CartController(CartModel().obs),
              builder: (controller) => Row(
                children: [
                  CustomIconButton(
                    onTap: () {
                      controller.removeQuantity(index);
                    },
                    height: 32,
                    width: 32,
                    variant: IconButtonVariant.FillBluegray50,
                    shape: IconButtonShape.RoundedBorder8,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgMenu,
                    ),
                  ),
                  Padding(
                    padding: getPadding(left: 16, right: 16),
                    child: Text(
                      cartItemModelObj.quantity.toString(),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtBodyBlack900,
                    ),
                  ),
                  CustomIconButton(
                    onTap: () {
                      controller.addQuantity(index);
                    },
                    height: 32,
                    width: 32,
                    margin: getMargin(
                      left: 15,
                    ),
                    variant: IconButtonVariant.FillBluegray50,
                    shape: IconButtonShape.RoundedBorder8,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgPlus,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
