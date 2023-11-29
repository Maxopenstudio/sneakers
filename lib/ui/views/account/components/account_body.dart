/*
Author: XamDesign
Date: 30.05.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/account/components/account_form.dart';
import 'package:xam_shoes_app/ui/views/account/components/account_photo.dart';

class AccountBody extends StatelessWidget {
  const AccountBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: DeviceUtils.getWidth(context),
        padding: EdgeInsets.symmetric(
          horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
        ),
        child: const Column(
          children: [
            AccountInfo(),
            AccountForm(),
          ],
        ),
      ),
    );
  }
}
