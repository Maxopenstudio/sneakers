/*
Author: XamDesign
Date: 22.05.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/ui/views/reset_password/components/reset_password_description.dart';
import 'package:xam_shoes_app/ui/views/reset_password/components/reset_password_title.dart';

class ResetPasswordWelcome extends StatelessWidget {
  const ResetPasswordWelcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ResetPasswordTitle(),
        ResetPasswordDescription(),
      ],
    );
  }
}
