/*
Author: XamDesign
Date: 7.06.2023
*/

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:get/get_utils/get_utils.dart';

class ChatDateText extends StatelessWidget {
  final DateTime date;

  const ChatDateText({
    required this.date,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        DateFormat.yMMMMEEEEd().add_jm().format(date),
        textAlign: TextAlign.center,
        style: context.textTheme.bodyMedium?.copyWith(
          color: kLightTextSecondaryColor,
        ),
      ),
    );
  }
}
