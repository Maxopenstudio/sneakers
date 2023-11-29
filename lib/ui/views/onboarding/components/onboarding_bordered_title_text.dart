/*
Author: XamDesign
Date: 20.05.2023
*/

import 'package:flutter/material.dart';

import 'package:xam_shoes_app/core/utils/text/text_outlined_style.dart';
import 'package:get/get_utils/get_utils.dart';

class OnboardingBorderedTitleText extends StatelessWidget {
  final String text;

  const OnboardingBorderedTitleText({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.headlineMedium?.copyWith(
        fontSize: 40,
        shadows: CustomTextStyle.outlinedText(
            strokeColor: context.textTheme.headlineMedium!.color!),
        letterSpacing: 2,
        color: Colors.white,
      ),
    );
  }
}
