import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/cart_screen/models/cart_product_model.dart';
import 'package:shoes_app/widgets/custom_icon_button.dart';
import '../../../data/products_controller/products_controller.dart';
import '../controller/cart_controller.dart';

// ignore: must_be_immutable
class CartItemWidget extends StatelessWidget {
  CartItemWidget(
    this.productModel,
  );

  CartProductModel productModel;
  final CartController cartController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
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
                  decoration: AppDecoration.fillGray100.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Stack(
                    children: [
                      CustomImageView(
                        url: productModel.thumb,
                        alignment: Alignment.bottomCenter,
                        fit: BoxFit.fitWidth,
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
                    FittedBox(
                      fit: BoxFit.cover,
                      child: Container(
                        width: 100,
                        child: Text(
                          productModel.name,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtHeadline,
                          maxLines: 3,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 4,
                      ),
                      child: Text(
                        productModel.price,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBodyBlack900,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 6,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 6,
                      ),
                      child: Text(
                        "${productModel.options.first.name} : ${productModel.options.first.value}",
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
                child: Row(
                    children: [
                      CustomIconButton(
                        onTap: () async {
                          await cartController.removeQuantity(int.parse(productModel.key), int.parse(productModel.quantity));
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
                          productModel.quantity,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtBodyBlack900,
                        ),
                      ),
                      CustomIconButton(
                        onTap: () async {
                          await cartController.addQuantity(int.parse(productModel.key), int.parse(productModel.quantity));
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
            ],
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: IconButton(
            icon: Icon(Icons.clear),
           color:ColorConstant.black900,
            iconSize: 20,
            onPressed: removeCartProduct,
          ),
        )
      ],
    );
  }
  Future<void>removeCartProduct() async {
    await cartController.deleteCartProduct(int.parse(productModel.key));
    print("ProductDetailScreen add/rem favorite");
  }
}