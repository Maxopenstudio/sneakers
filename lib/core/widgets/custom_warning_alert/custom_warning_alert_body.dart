/*
Author: XamDesign
Date: 5.06.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/widgets/custom_warning_alert/custom_warning_alert_actions.dart';
import 'package:xam_shoes_app/core/widgets/custom_warning_alert/custom_warning_alert_title.dart';

class CustomWarningAlertBody extends StatelessWidget {
  final String title;
  final String? yesTitle;
  final VoidCallback onYesPressed;

  const CustomWarningAlertBody({
    required this.title,
    required this.onYesPressed,
    super.key,
    this.yesTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomWarningAlertTitle(title: title),
        CustomWarningAlertActions(
          yesTitle: yesTitle,
          onYesPressed: onYesPressed,
        ),
      ],
    );
  }
}
