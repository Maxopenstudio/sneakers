/*
Author: XamDesign
Date: 22.05.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';
import 'package:xam_shoes_app/ui/views/forgot_password/components/forgot_password_description.dart';
import 'package:xam_shoes_app/ui/views/forgot_password/components/forgot_password_title.dart';

class ForgotPasswordWelcome extends BaseStatelessWidget {
  const ForgotPasswordWelcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ForgotPasswordTitle(),
        ForgotPasswordDescription(),
      ],
    );
  }
}
