/*
Author: XamDesign
Date: 22.05.2023
*/

import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/change_address/components/change_address_new_address_field.dart';
import 'package:xam_shoes_app/ui/views/change_address/components/change_address_old_address_field.dart';

class ChangeAddressForm extends StatefulWidget {
  const ChangeAddressForm({
    super.key,
  });

  @override
  State<ChangeAddressForm> createState() => _ChangeAddressFormState();
}

class _ChangeAddressFormState extends State<ChangeAddressForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
      ),
      child: Form(
        key: BaseController.settingsController.changeAddressFormKey,
        child: const Column(
          children: [
            ChangeAddressOldAddressField(),
            ChangeAddressNewAddressField(),
          ],
        ),
      ),
    );
  }
}
