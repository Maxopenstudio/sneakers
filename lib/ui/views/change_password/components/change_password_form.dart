/*
Author: XamDesign
Date: 22.05.2023
*/

import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/utils/base/base_controller.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/change_password/components/change_password_confirm_new_password_field.dart';
import 'package:xam_shoes_app/ui/views/change_password/components/change_password_new_password_field.dart';
import 'package:xam_shoes_app/ui/views/change_password/components/change_password_recent_password_field.dart';

class ChangePasswordForm extends StatefulWidget {
  const ChangePasswordForm({
    super.key,
  });

  @override
  State<ChangePasswordForm> createState() => _ChangePasswordFormState();
}

class _ChangePasswordFormState extends State<ChangePasswordForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
      ),
      child: Form(
        key: BaseController.settingsController.changePasswordFormKey,
        child: const Column(
          children: [
            ChangePasswordRecentPasswordField(),
            ChangePasswordNewPasswordField(),
            ChangePasswordConfirmNewPasswordField(),
          ],
        ),
      ),
    );
  }
}
