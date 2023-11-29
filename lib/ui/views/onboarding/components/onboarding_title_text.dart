/*
Author: XamDesign
Date: 20.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class OnboardingTitleText extends StatelessWidget {
  final String text;

  const OnboardingTitleText({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.headlineMedium?.copyWith(
        fontSize: 40,
        letterSpacing: 2,
      ),
    );
  }
}
