/*
Author: XamDesign
Date: 24.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:xam_shoes_app/core/utils/base/base_stateless.dart';

class CustomTitle extends BaseStatelessWidget {
  final String titleTop;
  final String titleBottom;

  const CustomTitle({
    required this.titleTop,
    required this.titleBottom,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleTop,
          style: context.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.w300,
          ),
        ),
        Text(
          titleBottom,
          style: context.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
