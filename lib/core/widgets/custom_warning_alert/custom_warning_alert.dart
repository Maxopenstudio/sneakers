/*
Author: XamDesign
Date: 5.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:xam_shoes_app/core/widgets/custom_warning_alert/custom_warning_alert_body.dart';

class CustomWarningAlert extends StatelessWidget {
  final String title;
  final String? yesTitle;
  final VoidCallback onYesPressed;

  const CustomWarningAlert({
    required this.title,
    required this.onYesPressed,
    super.key,
    this.yesTitle,
  });
 
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      contentPadding: EdgeInsets.zero,
      content: CustomWarningAlertBody(
        title: title,
        yesTitle: yesTitle,
        onYesPressed: onYesPressed,
      ),
    );
  }
}
