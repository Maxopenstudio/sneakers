/*
Author: XamDesign
Date: 30.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

import 'package:xam_shoes_app/core/constants/color_constants.dart';

class DetailPropertyText extends StatelessWidget {
  final String title;
  final String description;

  const DetailPropertyText({
    required this.title,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: RichText(
        text: TextSpan(
          text: title,
          style: context.textTheme.bodyLarge?.copyWith(
            color: kLightTextSecondaryColor,
            fontWeight: FontWeight.w300,
          ),
          children: [
            TextSpan(
              text: " $description",
              style: context.textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
