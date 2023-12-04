import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/custom_radio_button.dart';

import '../../../widgets/custom_icon_button.dart';
import '../controller/check_out_one_controller.dart';
import '../models/checkoutone_item_model.dart';

// ignore: must_be_immutable
class CheckoutoneItemWidget extends StatelessWidget {
  CheckoutoneItemWidget(this.checkoutoneItemModelObj);

  CheckoutoneItemModel checkoutoneItemModelObj;

  var controller = Get.find<CheckOutOneController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckOutOneController>(
      init: CheckOutOneController(),
      builder: (controller) => Container(
        width: double.maxFinite,
        padding: getPadding(
          left: 20,
          top: 6,
          right: 20,
          bottom: 6,
        ),
        decoration: AppDecoration.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: getPadding(
                top: 8,
                bottom: 8,
              ),
              child: CustomRadioButton(
                text: checkoutoneItemModelObj.name,
                iconSize: getHorizontalSize(
                  24,
                ),
                value: checkoutoneItemModelObj.name,
                groupValue: controller.radioGroup.value,
                margin: getMargin(
                  top: 8,
                  bottom: 8,
                ),
                fontStyle: RadioFontStyle.SFUITextRegular17,
                onChange: (value) {
                  controller.changeRadioGroup(value);
                },
              ),
            ),
            CustomIconButton(height: 40, width: 40, variant: IconButtonVariant.FillGray100, shape: IconButtonShape.RoundedBorder8, padding: IconButtonPadding.PaddingAll8, child: CustomImageView(svgPath: ImageConstant.imagePath + checkoutoneItemModelObj.image))
          ],
        ),
      ),
    );
  }
}
