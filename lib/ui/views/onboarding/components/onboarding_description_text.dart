/*
Author: XamDesign
Date: 20.05.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:get/get_utils/get_utils.dart';

class OnboardingDescriptionText extends StatelessWidget {
  final String text;

  const OnboardingDescriptionText({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: context.textTheme.titleMedium?.copyWith(
          color: kLightTextSecondaryColor,
        ),
      ),
    );
  }
}
