/*
Author: XamDesign
Date: 30.05.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/change_password/components/change_password_form.dart';
import 'package:xam_shoes_app/ui/views/change_password/components/change_password_title.dart';

class ChangePasswordBody extends BaseStatelessWidget {
  const ChangePasswordBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: DeviceUtils.getHeight(context),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ChangePasswordTitle(),
            ChangePasswordForm(),
          ],
        ),
      ),
    );
  }
}
