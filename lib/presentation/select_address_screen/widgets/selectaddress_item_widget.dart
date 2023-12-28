import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/custom_radio_button.dart';

import '../../../data/apiClient/api_client.dart';
import '../controller/select_address_controller.dart';
import '../models/select_address_model.dart';

// ignore: must_be_immutable
class SelectaddressItemWidget extends StatelessWidget {
  SelectaddressItemWidget(this.selectaddressItemModelObj,
      this.fullAddress
      );

  Address selectaddressItemModelObj;
  final String fullAddress;
  var controller = Get.find<SelectAddressController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 20,
        top: 16,
        right: 20,
        bottom: 16,
      ),
      decoration: AppDecoration.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GetBuilder<SelectAddressController>(
            init: SelectAddressController(Get.find<ApiClient>()),
            builder: (controller) => CustomRadioButton(
              iconSize: getHorizontalSize(
                24,
              ),
              value: selectaddressItemModelObj.addressId,
              groupValue: controller.radioGroup.value,
              fontStyle: RadioFontStyle.SFUITextRegular17,
              onChange: (value) {
                controller.changeRadio(value);
              },
            ),
          ),
          Container(
            child: Text(
              fullAddress,
              maxLines: null,
             // textAlign: TextAlign.left,
              style: AppStyle.txtBody,
            ),
          ),
        ],
      ),
    );
  }
}
