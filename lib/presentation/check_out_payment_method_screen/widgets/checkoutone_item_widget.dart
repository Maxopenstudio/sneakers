import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/data/apiClient/api_client.dart';
import 'package:shoes_app/presentation/check_out_payment_method_screen/controller/check_out_payment_method_controller.dart';
import 'package:shoes_app/presentation/check_out_payment_method_screen/models/payment_method.dart';
import 'package:shoes_app/widgets/custom_radio_button.dart';

import '../../../widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CheckoutoneItemWidget extends StatefulWidget {
  CheckoutoneItemWidget(this.paymentMethod);

  PaymentMethod paymentMethod;

  @override
  State<CheckoutoneItemWidget> createState() => _CheckoutoneItemWidgetState();
}

class _CheckoutoneItemWidgetState extends State<CheckoutoneItemWidget> {
  var controller = Get.find<CheckOutPaymentMethodController>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckOutPaymentMethodController>(
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
                text: widget.paymentMethod.title,
                iconSize: getHorizontalSize(
                  24,
                ),
                value: widget.paymentMethod.code,
                groupValue: controller.paymentMethodCode.value,
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
            //CustomIconButton(height: 40, width: 40, variant: IconButtonVariant.FillGray100, shape: IconButtonShape.RoundedBorder8, padding: IconButtonPadding.PaddingAll8)
          ],
        ),
      ),
    );
  }
}
