import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/custom_radio_button.dart';

import '../controller/select_address_controller.dart';
import '../models/selectaddress_item_model.dart';

// ignore: must_be_immutable
class SelectaddressItemWidget extends StatelessWidget {
  SelectaddressItemWidget(this.selectaddressItemModelObj);

  SelectaddressItemModel selectaddressItemModelObj;

  var controller = Get.find<SelectAddressController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 20,
          top: 16,
          right: 20,
          bottom: 16,
        ),
        decoration: AppDecoration.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GetBuilder<SelectAddressController>(
                  init: SelectAddressController(),
                  builder: (controller) => CustomRadioButton(
                    text: selectaddressItemModelObj.name,
                    iconSize: getHorizontalSize(
                      24,
                    ),
                    value: selectaddressItemModelObj.name,
                    groupValue: controller.radioGroup.value,
                    fontStyle: RadioFontStyle.SFUITextRegular17,
                    onChange: (value) {
                      controller.changeRadio(value);
                    },
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgCar,
                  height: getSize(
                    24,
                  ),
                  width: getSize(
                    24,
                  ),
                ),
              ],
            ),
            Container(
              margin: getMargin(left: 32, top: 8, right: 82),
              child: Text(
                selectaddressItemModelObj.address,
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtBody,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
